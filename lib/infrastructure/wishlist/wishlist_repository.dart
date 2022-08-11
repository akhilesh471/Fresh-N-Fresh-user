import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:fresh_n_fresh/domain/wishlist/i_show_wishList_repo.dart';
import 'package:fresh_n_fresh/domain/wishlist/models/models.dart';
import 'package:injectable/injectable.dart';
@LazySingleton(as: IShowWishListRepo)
class ShowWishListRepository implements IShowWishListRepo {
  @override
  Future<Either<String, List<WishList>>> getWishList() async {
    List<WishList> list=[];
    try { 
      var favorite = await FirebaseFirestore.instance
          .collection('WishList')
          .doc('JNDa3edCMKfT4habaob1G1jE7Yn2')
          .collection('collections')
          .get();
       
      list = favorite.docs.map((e) => WishList.fromJson(e.data())).toList();
   
      return right(list);
    } catch (e) {
    
      return left('Error Something Wrong');
    }
  }
}
