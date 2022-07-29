part of 'orders_bloc.dart';

@freezed
class OrdersEvent with _$OrdersEvent {
  const factory OrdersEvent.addOrders({required Orders model,required String paymentId}) = _AddOrders;
 
}