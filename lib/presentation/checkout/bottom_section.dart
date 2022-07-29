import 'package:flutter/material.dart';
import 'package:fresh_n_fresh/domain/products/models/models.dart';
import 'package:fresh_n_fresh/presentation/products/bottom_section.dart';
num? amount;
class Payment extends StatelessWidget {
  final Products model;
  const Payment({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
     amount=(totalAmount!+10);
    return Container(
      padding: const EdgeInsets.all(8),
      color: Colors.white,
      height: size.height * 0.3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          subTitle(title: 'Payment', size: 20),
          const Divider(thickness: 2,),
          subTitle(title: 'Razor Pay', size: 16),
          subTitle(title: 'Cash On Delivery', size: 16),
          const Divider(
            thickness: 2,
          ),
          Row(
            children: [
              subTitle(title: 'Amount', size: 16),
              SizedBox(
                width: size.width * 0.47,
              ),
              subTitle(title:'₹${totalAmount.toString()}', size: 16)
            ],
          ),
          Row(
            children: [
              subTitle(title: 'Delivery Charge', size: 16),
              SizedBox(
                width: size.width * 0.34,
              ),
              subTitle(title: '₹10.0', size: 16)
            ],
          ),
          Row(
            children: [
              subTitle(title: 'Total Amount', size: 16),
              SizedBox(
                width: size.width * 0.38,
              ),
              subTitle(title:amount!.toString(), size: 16)
            ],
          ),
        ],
      ),
    );
  }

  Text subTitle({required String title, required double size}) {
    return Text(
      title,
      style: TextStyle(fontSize: size, fontWeight: FontWeight.bold),
    );
  }
}
