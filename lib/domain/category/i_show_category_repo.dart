import 'package:dartz/dartz.dart';
import 'package:fresh_n_fresh/domain/category/models/models.dart';

abstract class IShowCategoryRepo{
  Future<Either<String,List<Category>>>  getAllCategory();
}