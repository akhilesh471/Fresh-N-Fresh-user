import 'package:dartz/dartz.dart';
import 'package:fresh_n_fresh/domain/user/models/model.dart';

abstract class IShowUserRepo{
  Future<Either<String,UserModel>> getUserData({required String id});
}