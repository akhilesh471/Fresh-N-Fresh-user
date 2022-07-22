import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:fresh_n_fresh/domain/category/i_show_category_repo.dart';
import 'package:fresh_n_fresh/domain/category/models/models.dart';
import 'package:injectable/injectable.dart';
@LazySingleton(as: IShowCategoryRepo)
class ShowCategoryRepository implements IShowCategoryRepo{
  @override
  Future<Either<String, List<Category>>> getAllCategory()async{
    dynamic list;

    try {
      var catagoryData = FirebaseFirestore.instance.collection('categories');
      var result = await catagoryData.get();
      list = result.docs.map((e) => Category.fromJson(e.data())).toList();
      
      return right(list);
    } catch (e) {
      return left('Error Something Wrong');
    }
  }
}