import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fresh_n_fresh/applications/add_to_cart/add_to_cart_bloc.dart';
import 'package:fresh_n_fresh/applications/products/products_bloc.dart';
import 'package:fresh_n_fresh/applications/user_details/userdetails_bloc.dart';
import 'package:fresh_n_fresh/applications/wish_list/wish_list_bloc.dart';
import 'package:fresh_n_fresh/domain/add_to_cart/models/models.dart';
import 'package:fresh_n_fresh/domain/wishlist/models/models.dart';
import 'package:fresh_n_fresh/presentation/products/viewproducts.dart';

class HomePageDownSession extends StatefulWidget {
  const HomePageDownSession({Key? key}) : super(key: key);

  @override
  State<HomePageDownSession> createState() => _HomePageDownSessionState();
}

class _HomePageDownSessionState extends State<HomePageDownSession> {
  @override
  Widget build(BuildContext context) {
    context
        .read<ProductsBloc>()
        .add(const ProductsEvent.getAllProducts(filterKey: 'All'));
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return BlocBuilder<UserdetailsBloc, UserdetailsState>(
      builder: (context, state) {
        final userId = state.model.id;
        print(userId);
        return Container(
            width: double.infinity,
            height: height * 0.538,
            color: const Color.fromRGBO(237, 237, 237, 1),
            child: BlocBuilder<ProductsBloc, ProductsState>(
              builder: (context, state) {
                final data = state.productList;
                return (state.isLoading == true)
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithMaxCrossAxisExtent(
                                maxCrossAxisExtent: 300,
                                childAspectRatio: 0.86,
                                crossAxisSpacing: 20,
                                mainAxisSpacing: 20),
                        itemCount: state.productList.length,
                        itemBuilder: (BuildContext ctx, index) {
                          return InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) {
                                  return ViewProducts(
                                    model: state.productList[index],
                                  );
                                },
                              ));
                            },
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Container(
                                width: width * 0.45,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8))),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Stack(
                                        children: [
                                          Container(
                                            height: height * 0.15,
                                            width: width * 0.5,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: NetworkImage(state
                                                        .productList[index]
                                                        .image![0]),
                                                    fit: BoxFit.fill)),
                                          ),
                                          StreamBuilder(
                                              stream: FirebaseFirestore.instance
                                                  .collection('WishList')
                                                  .doc(
                                                      'JNDa3edCMKfT4habaob1G1jE7Yn2')
                                                  .collection('collections')
                                                  .where('id',
                                                      isEqualTo: data[index].id)
                                                  .snapshots(),
                                              builder: (context,
                                                  AsyncSnapshot<
                                                          QuerySnapshot<
                                                              Map<String,
                                                                  dynamic>>>
                                                      snapshot) {
                                                if (snapshot.data == null) {
                                                  return SizedBox();
                                                }
                                                bool isFav = snapshot.data!
                                                    .docs.isNotEmpty;
                                                return Positioned(
                                                    right: -5,
                                                    top: -10,
                                                    child: isFav
                                                        ? IconButton(
                                                            onPressed: () {
                                                              context
                                                                  .read<
                                                                      WishListBloc>()
                                                                  .add(WishListEvent.remove(
                                                                      id: data[
                                                                              index]
                                                                          .id!));
                                                            },
                                                            icon: Icon(
                                                              Icons.favorite,
                                                              color: Colors.red,
                                                            ))
                                                  :
                                                        IconButton(
                                                            onPressed:
                                                                () async {
                                                              final model =
                                                                  WishList(
                                                                id: data[index]
                                                                    .id,
                                                                image:
                                                                    data[index]
                                                                        .image,
                                                                isWish: true,
                                                                units:
                                                                    data[index]
                                                                        .units,
                                                                userId: userId!,
                                                                productName:
                                                                    data[index]
                                                                        .name,
                                                                quantity: data[
                                                                        index]
                                                                    .quantity,
                                                                amount:
                                                                    data[index]
                                                                        .price,
                                                                productId: data[
                                                                        index]
                                                                    .id
                                                                    .toString(),
                                                                date: Timestamp
                                                                    .now(),
                                                              );

                                                              context
                                                                  .read<
                                                                      WishListBloc>()
                                                                  .add(WishListEvent
                                                                      .add(
                                                                          model:
                                                                              model));
                                                              // context.read<ProductsBloc>().add(ProductsEvent.getAllProducts(filterKey: 'All'));
                                                            },
                                                            icon: Icon(
                                                              Icons
                                                                  .favorite_border_outlined,
                                                            ),
                                                          ));
                                              })
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            state.productList[index].name,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                                color: Colors.red),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Text(
                                              state.productList[index]
                                                  .description,
                                              style: TextStyle(
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  color: Color.fromARGB(
                                                      255, 95, 93, 93),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '₹${state.productList[index].price.toString()}',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18),
                                          ),
                                          CircleAvatar(
                                            radius: 15,
                                            backgroundColor:
                                                const Color.fromRGBO(
                                                    27, 136, 202, 1),
                                            child: IconButton(
                                                padding: EdgeInsets.zero,
                                                onPressed: () {
                                                  final model = Cart(
                                                      productName: state
                                                          .productList[index]
                                                          .name,
                                                      quantity: 1,
                                                      amount: state
                                                          .productList[index]
                                                          .price,
                                                      unitAmount: state
                                                          .productList[index]
                                                          .price,
                                                      productId: state
                                                          .productList[index]
                                                          .id!,
                                                      date: Timestamp.now(),
                                                      image: state
                                                          .productList[index]
                                                          .image![0],
                                                      units: state
                                                          .productList[index]
                                                          .units);
                                                  context
                                                      .read<AddToCartBloc>()
                                                      .add(AddToCartEvent.add(
                                                          model: model,
                                                          id: state
                                                              .productList[
                                                                  index]
                                                              .id!));
                                                },
                                                icon: Icon(
                                                  Icons.add,
                                                  size: 20,
                                                  color: Colors.white,
                                                )),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        });
              },
            ));
      },
    );
  }

  Text productDetails(String text, double size) {
    return Text(
      text,
      style: TextStyle(
          fontSize: size,
          fontWeight: FontWeight.w400,
          color: Colors.white,
          shadows: [
            Shadow(
                color: Colors.black.withOpacity(0.3),
                offset: const Offset(2, 3),
                blurRadius: 15),
          ]),
    );
  }
}
