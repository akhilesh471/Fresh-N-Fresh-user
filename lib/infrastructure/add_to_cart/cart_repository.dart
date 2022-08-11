import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fresh_n_fresh/domain/add_to_cart/i_show_cart_repo.dart';
import 'package:fresh_n_fresh/domain/add_to_cart/models/models.dart';
import 'package:injectable/injectable.dart';
@LazySingleton(as:IShowCartRepo)
class ShowCartRepository implements IShowCartRepo{
  @override
  Future<Either<String, List<Cart>>> getCartList()async {
    dynamic list;

    try {
     String userId=await FirebaseAuth.instance.currentUser!.uid;
      var catagoryData = FirebaseFirestore.instance.collection('Cart').doc(userId).collection('Collections');
      var result = await catagoryData.get();
      list = result.docs.map((e) => Cart.fromJson(e.data())).toList();
      if(list!=null){
      return right(list);
      }
      else{
        return left('No Data');
      }
    } catch (e) {
      return left('Error Something Wrong');
    }
  }
}