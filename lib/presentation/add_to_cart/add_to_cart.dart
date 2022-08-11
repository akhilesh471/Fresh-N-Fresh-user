import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:fresh_n_fresh/applications/add_to_cart/add_to_cart_bloc.dart';
import 'package:fresh_n_fresh/applications/quantity/counter_bloc.dart';
import 'package:fresh_n_fresh/core/title.dart';
import 'package:fresh_n_fresh/domain/add_to_cart/models/models.dart';
import 'package:fresh_n_fresh/presentation/add_to_cart/buynow.dart';
import 'package:fresh_n_fresh/presentation/add_to_cart/widgets/widgets.dart';
import 'package:fresh_n_fresh/presentation/nabvar/sidebar.dart';


class AddToCart extends StatefulWidget {
  const AddToCart({Key? key}) : super(key: key);

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  @override
  void initState() {
    currentIndex=3;
    context.read<AddToCartBloc>().add(AddToCartEvent.viewCart());
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {
    double _w = MediaQuery.of(context).size.width;
    var size = MediaQuery.of(context).size;
    var data;
    return Scaffold(
      appBar: AppBar(
        title: AppbarTitle(text: 'CART'),
      ),
      body: AnimationLimiter(
        child: BlocBuilder<AddToCartBloc, AddToCartState>(
          builder: (context, state) {
            return ListView.builder(
              padding: EdgeInsets.all(_w / 30),
              physics: BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              itemCount: state.cartList.length,
              itemBuilder: (BuildContext context, int index) {
                data = state.cartList[index].quantity;
                return AnimationConfiguration.staggeredList(
                    position: index,
                    delay: Duration(milliseconds: 100),
                    child: SlideAnimation(
                      duration: Duration(milliseconds: 2500),
                      curve: Curves.fastLinearToSlowEaseIn,
                      child: FadeInAnimation(
                        curve: Curves.fastLinearToSlowEaseIn,
                        duration: Duration(milliseconds: 2500),
                        child: Container(
                          margin: EdgeInsets.only(bottom: _w / 20),
                          // height: _w / 4,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 40,
                                spreadRadius: 10,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 10.0, top: 10, bottom: 10, right: 10),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: size.height * 0.1,
                                      width: size.width * 0.2,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5)),
                                          color: Colors.black,
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  state.cartList[index].image),
                                              fit: BoxFit.fill)),
                                    ),
                                    SizedBox(
                                      width: size.width * 0.05,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        productDetails(
                                            info: 'Name',
                                            details: state
                                                .cartList[index].productName,
                                            width: size.width * 0.09,
                                            size: size),
                                        productDetails(
                                            info: 'Price',
                                            details:
                                                '₹${state.cartList[index].unitAmount.toString()}',
                                            width: size.width * 0.108,
                                            size: size),
                                        // productDetails(
                                        //     info: 'Qty',
                                        //     details:
                                        //         '${state.cartList[index].quantity}',
                                        //     width: size.width * 0.131,
                                        //     size: size),

                                        Row(
                                          children: [
                                            subTitle(title: 'Qty', size: 16),
                                            SizedBox(
                                              width: size.width * 0.131,
                                            ),
                                            Container(
                                              height: size.height * 0.03,
                                              width: size.width * 0.2,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                color: Colors.blue,
                                              )),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  InkWell(
                                                    onTap: () {
                                                      context
                                                          .read<AddToCartBloc>()
                                                          .add(AddToCartEvent
                                                              .decrementQuantity(qty:state.cartList[index].quantity ,
                                                                  model: state
                                                                          .cartList[
                                                                      index]));
                                                    },
                                                    child: const Icon(
                                                      Icons.remove,
                                                      color: Colors.blue,
                                                    ),
                                                  ),
                                                  Container(
                                                    width: size.width * 0.07,
                                                    color: Colors.blue,
                                                    child: Center(
                                                        child: (state
                                                                    .isLoading ==
                                                                true)
                                                            ? Center(
                                                                child:
                                                                    CircularProgressIndicator())
                                                            : (state.isqty ==
                                                                    true)
                                                                ? Text(
                                                                    state.qty
                                                                        .toString(),
                                                                    style: const TextStyle(
                                                                        color: Colors
                                                                            .white),
                                                                  )
                                                                : Text(
                                                                    state
                                                                        .cartList[
                                                                            index]
                                                                        .quantity
                                                                        .toString(),
                                                                    style: const TextStyle(
                                                                        color: Colors
                                                                            .white),
                                                                  )),
                                                  ),
                                                  InkWell(
                                                    onTap: () {
                                                      context
                                                          .read<AddToCartBloc>()
                                                          .add(AddToCartEvent
                                                              .incrementQuantity(
                                                                  model: state
                                                                          .cartList[
                                                                      index]));
                                                    },
                                                    child: const Icon(
                                                      Icons.add,
                                                      color: Colors.blue,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                        // productDetails(
                                        //     info: 'Quantity',
                                        //     details: 'quantity.toString()',
                                        //     width: size.width * 0.041,
                                        //     size: size),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: size.height * 0.01,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(width: 1)),
                                      height: size.height * 0.05,
                                      width: size.width * 0.45,
                                      child: Center(
                                          child: Text(
                                        'Total  ₹${state.cartList[index].amount.toString()}',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      )),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        final model = Cart(units:state.cartList[index].units ,
                                            productName: state
                                                .cartList[index].productName,
                                            quantity:
                                                state.cartList[index].quantity,
                                            amount:
                                                state.cartList[index].amount,
                                            unitAmount: state
                                                .cartList[index].unitAmount,
                                            productId:
                                                state.cartList[index].productId,
                                            date: state.cartList[index].date,
                                            image: state.cartList[index].image);
                                        Navigator.of(context).push(
                                            MaterialPageRoute(builder: (ctx) {
                                          return BuyNow(model: model);
                                        }));
                                      },
                                      child: Container(
                                        height: size.height * 0.05,
                                        width: size.width * 0.43,
                                        decoration: BoxDecoration(
                                            border: Border.all(width: 1)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.paid_rounded),
                                            Text(
                                              'Buy this now',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ));
              },
            );
          },
        ),
      ),
    );
  }
}
