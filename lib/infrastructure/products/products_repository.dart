import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:fresh_n_fresh/domain/products/i_show_products_repo.dart';
import 'package:fresh_n_fresh/domain/products/models/models.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IShowProductsRepo)
class ShowProductsRepository implements IShowProductsRepo {
  @override
  Future<Either<String, List<Products>>> getProductsList(
      {required String filteredLIst}) async {
    List<Products> list;

    try {
      var productData = FirebaseFirestore.instance.collection('products');
      if (filteredLIst == 'All') {
        var result = await productData.get();
        list = result.docs.map((e) => Products.fromJson(e.data())).toList();
      } else {
        var result =
            await productData.where('category', isEqualTo: filteredLIst).get();
        list = result.docs.map((e) => Products.fromJson(e.data())).toList();
      }

      print(list);
      return right(list);
    } catch (e) {
      print(e);
      return left('Error Something Wrong');
    }
  }
}
