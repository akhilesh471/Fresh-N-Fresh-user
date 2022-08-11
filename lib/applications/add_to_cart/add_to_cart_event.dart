part of 'add_to_cart_bloc.dart';

@freezed
class AddToCartEvent with _$AddToCartEvent {
  const factory AddToCartEvent.add({required Cart model,required String id}) = _AddToCart;
  const factory AddToCartEvent.viewCart() = _ViewCart;
  const factory AddToCartEvent.incrementQuantity({required Cart model}) = _IncrementQuantity;
  const factory AddToCartEvent.decrementQuantity({required Cart model,required num qty}) = _DecrementQuantity;
}