import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fresh_n_fresh/applications/order/orders_bloc.dart';
import 'package:fresh_n_fresh/core/title.dart';
import 'package:fresh_n_fresh/domain/orders/models/models.dart';
import 'package:fresh_n_fresh/domain/products/models/models.dart';
import 'package:fresh_n_fresh/presentation/checkout/bottom_section.dart';
import 'package:fresh_n_fresh/presentation/checkout/top_section.dart';
import 'package:fresh_n_fresh/presentation/products/bottom_section.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

Orders? ordermodel;

class CheckOut extends StatefulWidget {
  final Products model;
  const CheckOut({Key? key, required this.model}) : super(key: key);

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  Razorpay? razorpay;
  @override
  void initState() {
    super.initState();
    razorpay = Razorpay();
    razorpay!.on(Razorpay.EVENT_PAYMENT_SUCCESS, handlerPaymentSuccess);
    razorpay!.on(Razorpay.EVENT_PAYMENT_ERROR, handlerErrorFailure);
    razorpay!.on(Razorpay.EVENT_EXTERNAL_WALLET, handlerExternalWallet);
    
  }

  @override
  void dispose() {
    super.dispose();
    razorpay!.clear();
  }

  void pay(num price) {
    var options = {
      'key': 'rzp_test_ak2ZRvYYvWHYhZ',
      'amount': price * 100,
      'name': 'Acme Corp.',
      // 'order_id':
      'description': 'Fine T-Shirt',
      'prefill': {'contact': '8888888888', 'email': 'test@razorpay.com'},
      "external": {
        "wallets": ["paytm"]
      }
    };
    try {
      razorpay!.open(options);
    } catch (e) {
      print(e.toString());
    }
  }

  void handlerErrorFailure() {
    
    print('failure');
  }

  void handlerPaymentSuccess(
    PaymentSuccessResponse response,
  ) {
    context.read<OrdersBloc>().add(OrdersEvent.addOrders(
        model: ordermodel!,
     
        paymentId: response.paymentId!));
    // log('Success');
   
    log(response.paymentId!);
  }

  void handlerExternalWallet(paymen) {
    print('Wallet');
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const AppbarTitle(text: 'Order Summary'),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              UserDetails(size: size, model: widget.model),
              Payment(model: widget.model),
              ElevatedButton(
                  onPressed: () {
                    ordermodel = Orders(
                       
                        userId: currentUserModel!.id!,
                        userName: currentUserModel!.name,
                        address: 'Kochi',
                        productName: widget.model.name,
                        quantity: quantity!,
                        amount: amount!,
                        productId: widget.model.id!,
                        image: widget.model.image![0],
                        date: Timestamp.now(), units: widget.model.units, email:currentUserModel!.email, number: currentUserModel!.number,status: 'Processing');    
                    pay(amount!);
                     
                  },
                  child: const Text('Submit'))
            ],
          ),
        )),
      ),
    );
  }
}
