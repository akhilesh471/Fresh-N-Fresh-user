import 'dart:developer';
import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fresh_n_fresh/domain/user/models/model.dart';
import 'package:fresh_n_fresh/presentation/homepage/homepage.dart';
import 'package:fresh_n_fresh/presentation/login_signup/homepage.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'authentication_event.dart';
part 'authentication_state.dart';
part 'authentication_bloc.freezed.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(AuthenticationState.initial()) {
    on<_SignUp>((event, emit) async {
      String? imageUrl;
      dynamic id;
      var storageImage = FirebaseStorage.instance.ref().child(event.image.path);
      var task = storageImage.putFile(event.image);
      await task.whenComplete(() async {
        try {
          imageUrl = await storageImage.getDownloadURL();
        } catch (e) {
          log(e.toString());
        }

        try {
          final userLogIn = FirebaseAuth.instance;
          await FirebaseAuth.instance
              .createUserWithEmailAndPassword(
            email: event.model.email,
            password: event.password,
          )
              .then((value) {
            id = userLogIn.currentUser!.uid;
            event.model.id = id;
            event.model.image = imageUrl;
            final json = event.model.toJson();

            FirebaseFirestore.instance.collection('userData').doc(id).set(json);
            Fluttertoast.showToast(msg: 'Registered Successfully');
            Navigator.of(event.context).pushReplacement(
              MaterialPageRoute(builder: (ctx) => HomePage()),
            );
          });
        } on FirebaseAuthException catch (e) {
          if (e.code == 'weak-password') {
            Fluttertoast.showToast(msg: 'Password must at least 6 characters');
          } else if (e.code == 'email-already-in-use') {
            Fluttertoast.showToast(msg: e.code);
          }
        } catch (e) {
          log(e.toString());
        }
      });
    });
    on<_Login>((event, emit) async {
      final prefs = await SharedPreferences.getInstance();
      dynamic id;

      try {
        final userLogIn = FirebaseAuth.instance;
        final user = await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: event.email, password: event.password);

        if (user != null) {
          id = userLogIn.currentUser!.uid;
          DocumentSnapshot<Map<String, dynamic>> collection =
              await FirebaseFirestore.instance
                  .collection('userData')
                  .doc(id)
                  .get();
          var model = collection.data()!['disable'];
          log(model.toString());
          emit(state.copyWith(
              model: UserModel.fromJson(
                  collection.data() as Map<String, dynamic>)));
          if (model == false) {
            await prefs.setBool('flag', true);
             Fluttertoast.showToast(msg: 'Login Successfully');
            Navigator.of(event.context).pushReplacement(
              MaterialPageRoute(builder: (ctx) => HomePageMain()),
            );
          } else {
            print('no user');
          }
        }
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          Fluttertoast.showToast(msg: e.code);
        } else if (e.code == 'wrong-password') {
          Fluttertoast.showToast(msg: e.code);
          print(e);
        }
      }
       catch(e){
        log(e.toString());
      }
    });
  }
}
