import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
      child: Container(
          height: size.height * 0.128,
          width: double.infinity,
          child: AnimationLimiter(
            child: ListView.builder(
              physics: BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              itemCount: 3,
              itemBuilder: (context, index) {
                return AnimationConfiguration.staggeredList(
                    position: index,
                    delay: Duration(milliseconds: 100),
                    child: SlideAnimation(
                      duration: Duration(milliseconds: 2500),
                      curve: Curves.fastLinearToSlowEaseIn,
                      horizontalOffset: 30,
                      verticalOffset: 300,
                      child: FlipAnimation(
                        duration: Duration(milliseconds: 3000),
                        curve: Curves.fastLinearToSlowEaseIn,
                        flipAxis: FlipAxis.y,
                        child: productDetails(size: size, type: 'type', info: 'info')
                      ),
                    ));
              },
            ),
          )),
    );
  }

  Row productDetails(
      {required Size size, required String type, required String info}) {
    return Row(
      children: [
        SizedBox(
          width: size.width * 0.5,
          child: Text(
            type,
            style: const TextStyle(
                fontSize: 20, color: Colors.grey, fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
            child: Text(
          info,
          style: const TextStyle(
              fontSize: 20, color: Colors.grey, fontWeight: FontWeight.bold),
        ))
      ],
    );
  }
}
