part of 'orders_bloc.dart';

@freezed
class OrdersState with _$OrdersState {
  const factory OrdersState({required bool isLoading}) = _Orders;
  factory OrdersState.initial(){
    return  const OrdersState(isLoading: false);
  }
}
