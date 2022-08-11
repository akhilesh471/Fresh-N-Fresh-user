part of 'add_to_cart_bloc.dart';

@freezed
class AddToCartState with _$AddToCartState {
  const factory AddToCartState(
      {required bool isLoading,
      required List<Cart> cartList,
      required Option<Either<String, List<Cart>>> cartFailureOrSuccessOption,
      required bool isqty,
      required num qty}) = _AddToCartState;
      
  factory AddToCartState.initial() {
    return AddToCartState(
        isLoading: false,
        cartFailureOrSuccessOption: None(),
        cartList: [],
        isqty: false,
        qty: 1);
  }
}
