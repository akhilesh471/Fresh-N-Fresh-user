import 'package:flutter/material.dart';

class AppbarTitle extends StatelessWidget {
  final String text;
  const AppbarTitle({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(letterSpacing: 2,fontWeight: FontWeight.bold),);
  }
}