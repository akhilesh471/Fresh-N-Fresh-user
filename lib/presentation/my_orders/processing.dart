import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:fresh_n_fresh/applications/user_details/userdetails_bloc.dart';
import 'package:fresh_n_fresh/core/size.dart';
import 'package:fresh_n_fresh/presentation/checkout/top_section.dart';

import 'package:fresh_n_fresh/presentation/my_orders/widgets/widgets.dart';

class Processing extends StatelessWidget {
  const Processing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: StreamBuilder(
            stream: FirebaseFirestore.instance.collection('Orders').snapshots(),
            builder: (context,
                AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
              if (snapshot.connectionState == ConnectionState.active) {
                if (snapshot.hasData) {
                  return BlocBuilder<UserdetailsBloc, UserdetailsState>(
                    builder: (context, state) {
                      return AnimationLimiter(
                        child: ListView.builder(
                          padding: EdgeInsets.all(w / 30),
                          physics: const BouncingScrollPhysics(
                              parent: AlwaysScrollableScrollPhysics()),
                          itemCount: snapshot.data!.docs.length,
                          itemBuilder: (BuildContext context, int index) {
                            return ((snapshot.data!.docs[index]['userId'] ==
                                        state.model.id &&
                                    snapshot.data!.docs[index]['status'] !=
                                        'Delivered')
                                ? AnimationConfiguration.staggeredList(
                                    position: index,
                                    delay: const Duration(milliseconds: 100),
                                    child: SlideAnimation(
                                      duration:
                                          const Duration(milliseconds: 2500),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child: FadeInAnimation(
                                        curve: Curves.fastLinearToSlowEaseIn,
                                        duration:
                                            const Duration(milliseconds: 2500),
                                        child: Container(
                                          margin:
                                              EdgeInsets.only(bottom: w / 20),
                                          height: h * 0.18,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(20)),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black
                                                    .withOpacity(0.1),
                                                blurRadius: 40,
                                                spreadRadius: 10,
                                              ),
                                            ],
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              children: [
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 5.0),
                                                      child: Container(
                                                        height: h * 0.1,
                                                        width: w * 0.25,
                                                        decoration:
                                                            BoxDecoration(
                                                                image:
                                                                    DecorationImage(
                                                                        image:
                                                                            NetworkImage(
                                                                          snapshot
                                                                              .data!
                                                                              .docs[index]['image'],
                                                                        ),
                                                                        fit: BoxFit
                                                                            .cover),
                                                                color: Colors
                                                                    .amber,
                                                                borderRadius:
                                                                    BorderRadius.all(
                                                                        const Radius.circular(
                                                                            5))),
                                                      ),
                                                    ),
                                                    kwidth10,
                                                    Expanded(
                                                      child: Container(
                                                        height: h * 0.116,
                                                        child: Column(
                                                          children: [
                                                            Column(children: [
                                                              productDetails(
                                                                  info:
                                                                      "Product Name",
                                                                  details: snapshot
                                                                          .data!
                                                                          .docs[index]
                                                                      [
                                                                      'productName'],
                                                                  width:
                                                                      size.width *
                                                                          0.05,
                                                                  size: size),
                                                              productDetails(
                                                                  info:
                                                                      "Quantity",
                                                                  details: snapshot
                                                                      .data!
                                                                      .docs[
                                                                          index]
                                                                          [
                                                                          'quantity']
                                                                      .toString(),
                                                                  width:
                                                                      size.width *
                                                                          0.147,
                                                                  size: size),
                                                              productDetails(
                                                                  info:
                                                                      "Total Amount",
                                                                  details: snapshot
                                                                      .data!
                                                                      .docs[
                                                                          index]
                                                                          [
                                                                          'amount']
                                                                      .toString(),
                                                                  width:
                                                                      size.width *
                                                                          0.065,
                                                                  size: size),
                                                            ]),
                                                          ],
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    (snapshot.data!.docs[index]
                                                                ['status'] !=
                                                            'Cancelled')
                                                        ? ElevatedButton(
                                                            onPressed:
                                                                () async {
                                                              FirebaseFirestore
                                                                  .instance
                                                                  .collection(
                                                                      'Orders')
                                                                  .doc(snapshot
                                                                          .data!
                                                                          .docs[index]
                                                                      ['id'])
                                                                  .update({
                                                                "status":
                                                                    "Cancelled"
                                                              });
                                                            },
                                                            child: const Text(
                                                                'Cancel'))
                                                        : SizedBox(),
                                                    Row(
                                                      children: [
                                                        (snapshot.data!.docs[
                                                                        index][
                                                                    'status'] !=
                                                                'Cancelled')
                                                            ? Icon(
                                                                Icons.circle,
                                                                color: Colors
                                                                    .green,
                                                              )
                                                            : Icon(
                                                                Icons.circle,
                                                                color:
                                                                    Colors.red,
                                                              ),
                                                        Text(
                                                          snapshot.data!
                                                                  .docs[index]
                                                              ['status'],
                                                          style:
                                                              const TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 18),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                : SizedBox());
                          },
                        ),
                      );
                    },
                  );
                } else if(snapshot.hasError){
               return Text('Something Error');
                }
                else {
                  return Center(child: CircularProgressIndicator());
                }
              } else {
                return Center(child: CircularProgressIndicator());
              }
            }),
      ),
    );
  }
}
