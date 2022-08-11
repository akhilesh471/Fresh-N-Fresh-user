import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fresh_n_fresh/applications/products/products_bloc.dart';
import 'package:fresh_n_fresh/domain/wishlist/i_show_wishList_repo.dart';
import 'package:fresh_n_fresh/domain/wishlist/models/models.dart';
import 'package:injectable/injectable.dart';

part 'wish_list_event.dart';
part 'wish_list_state.dart';
part 'wish_list_bloc.freezed.dart';

@injectable
class WishListBloc extends Bloc<WishListEvent, WishListState> {
  final IShowWishListRepo _iShowWishListRepo;
  WishListBloc(this._iShowWishListRepo) : super(WishListState.initial()) {
    on<_AddToWishList>((event, emit) async {
      final json = event.model.toJson();
      print(event.model.id);
      FirebaseFirestore.instance
          .collection('WishList')
          .doc(event.model.userId)
          .collection('collections')
          .doc(event.model.id)
          .set(json);
         
   
      // .add(json).then((value) => value.update({'id':value.id}));
 
      add(_GetData());
    });
    on<_GetData>((event, emit) async {
      emit(state.copyWith(
          isLoading: true, wishListFailureOrSuccessOption: none()));

      final Either<String, List<WishList>> wishListOption =
          await _iShowWishListRepo.getWishList();
      emit(wishListOption.fold(
          (failure) => state.copyWith(
              isLoading: false,
              wishListFailureOrSuccessOption: Some(left(failure))),
          (success) => state.copyWith(
              isLoading: false,
              wishListFailureOrSuccessOption: Some(right(success)),
              favorite: success)));
    });
    on<_Remove>((event, emit) async {
      try {
        print(event.id);
        final user = FirebaseAuth.instance.currentUser!.uid;
        final delProduct = FirebaseFirestore.instance
            .collection('WishList')
            .doc(user)
            .collection('collections')
            .doc(event.id);
        await delProduct.delete().then((value) async {
          await FirebaseFirestore.instance
              .collection('products')
              .doc(event.id)
              .update({"isFavourite": false});
        });
        add(const _GetData());
        // context.read<ProductsBloc>().add()
      } catch (e) {
        log(e.toString());
      }
    });

    // on<_RemoveData>((event, emit)async {
    //   try {
    //      var favorite = await FirebaseFirestore.instance
    //       .collection('WishList')
    //       .doc('JNDa3edCMKfT4habaob1G1jE7Yn2')
    //       .collection('collections').where("productId",isEqualTo: "query").get();

    //     var list = favorite.docs.map((e) => WishList.fromJson(e.data())).toList();

    //   } catch (e) {

    //   }
    // });
  }
}
