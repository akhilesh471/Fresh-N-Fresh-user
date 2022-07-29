import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fresh_n_fresh/domain/user/i_show_user_repo.dart';
import 'package:fresh_n_fresh/domain/user/models/model.dart';
import 'package:fresh_n_fresh/presentation/help_&_support/message.dart';
import 'package:injectable/injectable.dart';
@LazySingleton(as: IShowUserRepo)
class ShowUserData implements IShowUserRepo {
  @override
  Future<Either<String, UserModel>> getUserData({required String id}) async {
         try {  
      var userDetails=  FirebaseFirestore.instance.collection('userData');
        var result   = await userDetails.get();
        // result.
 var users = result.docs
          .where((element) => element.id == id)
          .toList();
    UserModel   model= UserModel.fromJson(users.first.data());
      return right(model);
    } catch (e) {
      return left('Something Wrong');
    }
  }
}
