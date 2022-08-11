import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fresh_n_fresh/domain/add_to_cart/i_show_cart_repo.dart';
import 'package:fresh_n_fresh/domain/add_to_cart/models/models.dart';
import 'package:fresh_n_fresh/infrastructure/add_to_cart/cart_repository.dart';
import 'package:injectable/injectable.dart';

part 'add_to_cart_event.dart';
part 'add_to_cart_state.dart';
part 'add_to_cart_bloc.freezed.dart';

@injectable
class AddToCartBloc extends Bloc<AddToCartEvent, AddToCartState> {
  final IShowCartRepo _iShowCartRepo;
  AddToCartBloc(this._iShowCartRepo) : super(AddToCartState.initial()) {
    on<_AddToCart>((event, emit) async {
      final userId = FirebaseAuth.instance.currentUser!.uid;
      log('message');
      log(userId);
      log('hello');
      final checkDuplicateData = await FirebaseFirestore.instance
          .collection('Cart')
          .doc(userId)
          .collection('Collections')
          .get();
      var users = checkDuplicateData.docs
          .where((element) => element.id == event.id)
          .toList();

      if (users.isEmpty) {
        final json = event.model.toJson();
        await FirebaseFirestore.instance
            .collection('Cart')
            .doc(userId)
            .collection('Collections')
            .doc(event.id)
            .set(json);
            
            Fluttertoast.showToast(msg: 'Added to Cart');
      }
    });
    on<_IncrementQuantity>((event, emit) async {
      emit(state.copyWith( isLoading: true,isqty: false
      ));
      final userId = FirebaseAuth.instance.currentUser!.uid;
      await FirebaseFirestore.instance
          .collection('Cart')
          .doc(userId)
          .collection('Collections')
          .doc(event.model.id)
          .update({'quantity': (event.model.quantity + 1),'amount':(event.model.amount+event.model.unitAmount)});
          add(_ViewCart());

      // try {
      //   final qty = await FirebaseFirestore.instance
      //       .collection('Cart')
      //       .doc(userId)
      //       .collection('Collections')
      //       .doc(event.model.id)
      //       .get();
      //   final model = Cart.fromJson(qty.data() as Map<String, dynamic>);
      //   emit(state.copyWith(isqty: true, qty: model.quantity,isLoading: false));



      // } catch (e) {
      //   log('Something error');
      // }
    });
    on<_DecrementQuantity>((event, emit) async {
      if(event.model.quantity!=1){
      emit(state.copyWith( isLoading: true,isqty: false
      ));
      final userId = FirebaseAuth.instance.currentUser!.uid;
      

      await FirebaseFirestore.instance
          .collection('Cart')
          .doc(userId)
          .collection('Collections')
          .doc(event.model.id)
          .update({'quantity': (event.model.quantity - 1),'amount':(event.model.amount-event.model.unitAmount)});
 add(_ViewCart());
      // try {
      //   final qty = await FirebaseFirestore.instance
      //       .collection('Cart')
      //       .doc(userId)
      //       .collection('Collections')
      //       .doc(event.model.id)
      //       .get();
      //   final model = Cart.fromJson(qty.data() as Map<String, dynamic>);
      //   emit(state.copyWith(isqty: true, qty: model.quantity,isLoading: false));



      // } catch (e) {
      //   log('Something error');
      // }
      }
    });

    on<_ViewCart>((event, emit) async {
      emit(state.copyWith(isLoading: true, cartFailureOrSuccessOption: none(),isqty: false));
      final Either<String, List<Cart>> cartOption =
          await _iShowCartRepo.getCartList();
      emit(
        cartOption.fold(
          (failure) => state.copyWith(
            isLoading: false,
            cartFailureOrSuccessOption: Some(
              left(failure),
            ),
          ),
          (success) => state.copyWith(
              isLoading: false,
              cartFailureOrSuccessOption: Some(
                right(success),
              ),
              cartList: success),
        ),
      );
    });
  }
}
