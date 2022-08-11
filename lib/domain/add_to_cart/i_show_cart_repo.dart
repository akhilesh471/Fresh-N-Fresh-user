import 'package:dartz/dartz.dart';
import 'package:fresh_n_fresh/domain/add_to_cart/models/models.dart';

abstract class IShowCartRepo{
  Future<Either<String,List<Cart>>> getCartList();
}