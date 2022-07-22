import 'dart:developer';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:fresh_n_fresh/applications/authentication/authentication_bloc.dart';
import 'package:fresh_n_fresh/core/colors.dart';
import 'package:fresh_n_fresh/domain/user/models/model.dart';
import 'package:image_picker/image_picker.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();

  final _numberController = TextEditingController();

  final _emailController = TextEditingController();

  final _passwordController = TextEditingController();
  bool _obsecureText = true;
  File? image;
  Future getImage() async {
    try {
      final pickedImage =
          await ImagePicker().pickImage(source: ImageSource.gallery);
      setState(() {
        image = File(pickedImage!.path);
      });
    } catch (e) {
      setState(() {
        log(e.toString());
      });
    }
  }

  String? choosedImage;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 200,
            child: Stack(
              children: [
                Align(
                  child: image != null
                      ? CircleAvatar(
                          radius: 60,
                          backgroundImage: FileImage(image!),
                        )
                      : CircleAvatar(
                          radius: 60,
                          backgroundImage: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbM-2IhHeIHlulPlhBeI_F6pSRxwxd_KcGsYM3Bm_NMX6LM6I54d4i6KR_nW6z07PB7KI&usqp=CAU'),
                        ),
                ),
                Positioned(
                  bottom: 10,
                  left: 130,
                  child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.red,
                      child: IconButton(
                          onPressed: () {
                            getImage();
                          },
                          icon: Icon(Icons.photo))),
                )
              ],
            ),
          ),
          SizedBox(
            height: height * 0.020,
          ),
          signUpField('Name', _nameController,false, false,),
          SizedBox(
            height: height * 0.020,
          ),
          signUpField('Number', _numberController,false, false,),
          SizedBox(
            height: height * 0.020,
          ),
          signUpField('Enter Email', _emailController,false, false, ),
          SizedBox(
            height: height * 0.020,
          ),
          signUpField('Password', _passwordController,_obsecureText, true, ),
          SizedBox(
            height: height * 0.026,
          ),
          GestureDetector(
            onTap: (() {
              if (image == null) {
                Fluttertoast.showToast(msg: 'Please add Image');
                return;
              }

              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                final model = UserModel(
                  disable: false,
                  date: Timestamp.now(),
                  email: _emailController.text,
                  name: _nameController.text,
                  number: _numberController.text,
                );
                context.read<AuthenticationBloc>().add(
                    AuthenticationEvent.signup(
                        context: context,
                        image: image!,
                        password: _passwordController.text,
                        model: model));
              }
            }),
            child: Container(
              height: height * 0.051,
              decoration: BoxDecoration(
                color: blue,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF1C1C1C).withOpacity(0.2),
                    spreadRadius: 1.3,
                    blurRadius: 2,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  'SIGNUP',
                  style: TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold, color: white),
                ),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.030,
          )
        ],
      ),
    );
  }

  Widget signUpField(
    String text,
    TextEditingController controller,
    bool obscureText,
    bool visibleIcon,
  ) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please fill out this field';
        } else {
          return null;
        }
      },
      controller: controller,
      obscureText:  obscureText,
      decoration: InputDecoration(
          hintText: text,
          hintStyle: TextStyle(
            fontSize: 16,
            color: grey,
            fontWeight: FontWeight.bold,
          ),
          suffixIcon: visibleIcon
              ? GestureDetector(
                  onTap: () {
                    setState(() {
                      _obsecureText = !_obsecureText;
                    });
                  },
                  child: Icon(
                       obscureText==true ? Icons.visibility : Icons.visibility_off),
                )
              : const Text(''),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: const BorderSide(width: 0, style: BorderStyle.none),
          ),
          filled: true,
          fillColor: lightblue.withOpacity(0.8),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 0)),
    );
  }

  Text signUpText(String text, double size, double height, double space) {
    return Text(
      text,
      style: TextStyle(
          fontSize: size, color: blue, height: height, letterSpacing: space),
    );
  }
}
