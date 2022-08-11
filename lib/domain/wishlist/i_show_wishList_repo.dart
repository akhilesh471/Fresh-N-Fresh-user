import 'package:dartz/dartz.dart';
import 'package:fresh_n_fresh/domain/wishlist/models/models.dart';

abstract class IShowWishListRepo{
  Future<Either<String,List<WishList>>> getWishList();
}