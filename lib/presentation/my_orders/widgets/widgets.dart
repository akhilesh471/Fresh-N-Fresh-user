
 import 'package:flutter/material.dart';

Container productDetails(
      {required String info,
      required String details,
      required double width,
      required var size}) {
    return Container(
        width: size.width * 0.63,
        // color: Colors.amber,
        child: Row(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            subTitle(title: info, size: 16),
            SizedBox(
              width: width,
            ),
            Text(details,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ))
          ],
        ));
  }

  Text subTitle({required String title, required double size}) {
    return Text(
      title,
      style: TextStyle(fontSize: size, fontWeight: FontWeight.bold),
    );
  }