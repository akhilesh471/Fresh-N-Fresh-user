import 'package:dartz/dartz.dart';
import 'package:fresh_n_fresh/domain/products/models/models.dart';

abstract class IShowProductsRepo{
  Future<Either<String,List<Products>>> getProductsList({required String filteredLIst});
}