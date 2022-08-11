import 'package:flutter/material.dart';
import 'package:fresh_n_fresh/core/colors.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: lightblue,
        body: SafeArea(
            child: Column(
          children: [
            Text('data'),
            SizedBox(height: size.height*0.15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 19.0),
              child: Stack(
                clipBehavior: Clip.none,

                children: [
                  Container(
                    height: size.height * 0.6,
                    width: size.width * 0.9,
                    color: Colors.white,
                  ),
                Positioned(top: -80,child: CircleAvatar(radius: 75,)),
                Positioned(top: -75,left: 9,child: CircleAvatar(radius: 70,backgroundColor: Colors.black,))
                ],
              ),
            )
          ],
        )));
  }
}
