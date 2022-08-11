import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fresh_n_fresh/applications/add_to_cart/add_to_cart_bloc.dart';
import 'package:fresh_n_fresh/applications/quantity/counter_bloc.dart';
import 'package:fresh_n_fresh/domain/add_to_cart/models/models.dart';
import 'package:fresh_n_fresh/domain/products/models/models.dart';
import 'package:fresh_n_fresh/presentation/checkout/checkout.dart';
import 'package:fresh_n_fresh/presentation/products/bottom_section.dart';
import 'package:fresh_n_fresh/presentation/products/top_section.dart';

class ViewProducts extends StatefulWidget {
  final Products model;
  const ViewProducts({Key? key, required this.model}) : super(key: key);

  @override
  State<ViewProducts> createState() => _ViewProductsState();
}

class _ViewProductsState extends State<ViewProducts> {
  @override
  void initState() {
    context.read<CounterBloc>().add(CounterEvent.setIntial());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            ShowCase(model: widget.model),
            Row(
              children: [
                productNamePrice(widget.model.name),
                SizedBox(
                  width: size.width * 0.03,
                ),
                productNamePrice('${widget.model.price}/${widget.model.units}'),
              ],
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: size.height * 0.15,
                  width: size.width * 0.8,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(50)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    child: LimitedBox(
                      child: SingleChildScrollView(
                          child: Text(
                        '  ${widget.model.description}',
                        style: TextStyle(fontSize: 15),
                      )),
                    ),
                  ),
                )
              ],
            ),
            ProductDetails(model: widget.model),
            SizedBox(
              height: size.height * 0.037,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    final model = Cart(
                      units: widget.model.units,
                      id:widget.model.id ,
                        productName: widget.model.name,
                        image: widget.model.image![0],
                        unitAmount: widget.model.price,
                        quantity: quantity!,
                        amount: totalAmount!,
                        productId: widget.model.id!,
                        date: Timestamp.now());
                    context
                        .read<AddToCartBloc>()
                        .add(AddToCartEvent.add(model: model,id: widget.model.id!));
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(50))),
                    width: size.width * 0.48,
                    height: size.height * 0.08,
                    child: const Center(
                        child: Text(
                      'Add to Cart',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: ((context) {
                      return CheckOut(
                        model: widget.model,
                      );
                    })));
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                      ),
                    ),
                    width: size.width * 0.48,
                    height: size.height * 0.08,
                    child: Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Buy Now',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: 19,
                          color: Colors.white,
                        )
                      ],
                    )),
                  ),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }

  Text productNamePrice(String text) {
    return Text(
      text,
      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, shadows: [
        Shadow(
            color: Colors.black.withOpacity(0.2),
            offset: const Offset(2, 3),
            blurRadius: 6),
      ]),
    );
  }
}
