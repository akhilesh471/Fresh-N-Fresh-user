import 'package:flutter/material.dart';
import 'package:fresh_n_fresh/core/colors.dart';
import 'package:fresh_n_fresh/core/title.dart';
import 'package:fresh_n_fresh/presentation/my_orders/delivered.dart';
import 'package:fresh_n_fresh/presentation/my_orders/processing.dart';
import 'package:fresh_n_fresh/presentation/nabvar/sidebar.dart';

class MyOrders extends StatelessWidget {
  const MyOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
        length: 2,
        child: Scaffold(
          drawer: Sidebar(),
            appBar: AppBar(
              title:const Text('T A B  B A R'),
              // centerTitle: true,
              bottom: TabBar(
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: tabBarlightBlue),
                  tabs:const [
                    Tab(text: 'Processing'),
                    Tab(text: 'Delivered'),
                  ]),
            ),
            body:const TabBarView(children: [Processing(), Delivered()])));
}
}