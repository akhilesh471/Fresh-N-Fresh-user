import 'package:flutter/material.dart';
import 'package:fresh_n_fresh/presentation/products/bottom_section.dart';
import 'package:fresh_n_fresh/presentation/products/top_section.dart';

class ViewProducts extends StatefulWidget {
  const ViewProducts({Key? key}) : super(key: key);

  @override
  State<ViewProducts> createState() => _ViewProductsState();
}

class _ViewProductsState extends State<ViewProducts> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            ShowCase(),
            Row(
              children: [
                productNamePrice('Chicken'),
                SizedBox(
                  width: size.width * 0.03,
                ),
                productNamePrice('100/kg'),
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
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(50)),
                  ),
                  // child: Expanded(child: Center(child: Text('dataaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaalaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    child: LimitedBox(
                      child: SingleChildScrollView(
                        child: Text(
                            '       dataaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa111111111111111111111111111111111111111'),
                      ),
                    ),
                  ),
                )
              ],
            ),
            const ProductDetails(),
            SizedBox(
              height: size.height * 0.11,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(50))),
                  width: size.width * 0.48,
                  height: size.height * 0.08,
                  child: Center(child: Text('Buy Now',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                    ),
                  ),
                  width: size.width * 0.48,
                  height: size.height * 0.08,
                                    child: Center(child: Text('Add to Cart',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)),

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
