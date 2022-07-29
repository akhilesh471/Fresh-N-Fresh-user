import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fresh_n_fresh/domain/orders/models/models.dart';

part 'orders_event.dart';
part 'orders_state.dart';
part 'orders_bloc.freezed.dart';

class OrdersBloc extends Bloc<OrdersEvent, OrdersState> {
  OrdersBloc() : super(OrdersState.initial()) {
    on<_AddOrders>((event, emit) async {
      event.model.paymentId=event.paymentId;
      final jsonData = event.model.toJson();
      await FirebaseFirestore.instance.collection('Orders').add(jsonData).then((value) =>value.update({'id':value.id}) );
    });
  }

}