import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fresh_n_fresh/applications/user_details/userdetails_bloc.dart';
import 'package:fresh_n_fresh/applications/wish_list/wish_list_bloc.dart';
import 'package:fresh_n_fresh/domain/products/models/models.dart';
import 'package:fresh_n_fresh/domain/wishlist/models/models.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ShowCase extends StatefulWidget {
  final Products model;
  const ShowCase({Key? key, required this.model}) : super(key: key);

  @override
  State<ShowCase> createState() => _ShowCaseState();
}

int activeIndex = 0;

class _ShowCaseState extends State<ShowCase> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.34,
      child: Stack(children: [
        CarouselSlider.builder(
            itemCount: widget.model.image!.length,
            itemBuilder: (context, index, realIndex) {
              final urlImage = widget.model.image![index];
              return buildImage(urlImage, index);
            },
            options: CarouselOptions(
                height: size.height * 0.3,
                viewportFraction: 1,
                enableInfiniteScroll: false,
                onPageChanged: (index, reason) {
                  setState(() => activeIndex = index);
                })),
        Positioned(
            bottom: 0,
            right: 165,
            child: SizedBox(
                height: size.height * 0.05,
                child: buildIndicator(length: widget.model.image!.length))),
        Positioned(
          right: 5,
          top: 5,
          child: BlocBuilder<UserdetailsBloc, UserdetailsState>(
            builder: (context, state) {
              final user = state.model.id!;
              return StreamBuilder(
                  stream: FirebaseFirestore.instance
                      .collection('WishList')
                      .doc(user)
                      .collection('collections')
                      .where('id', isEqualTo: widget.model.id)
                      .snapshots(),
                  builder: (context,
                      AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>>
                          snapshot) {
                    if (snapshot.data == null) {
                      return const SizedBox();
                    }
                    bool isFav = snapshot.data!.docs.isNotEmpty;
                    return IconButton(
                        onPressed: isFav
                            ? () {
                                context.read<WishListBloc>().add(
                                    WishListEvent.remove(id: widget.model.id!));
                              }
                            : () {
                                final model = WishList(
                                    id: widget.model.id!,
                                    isWish: true,
                                    image: widget.model.image,
                                    units: widget.model.units,
                                    userId: user,
                                    productName: widget.model.name,
                                    quantity: widget.model.quantity.toString(),
                                    amount: widget.model.price,
                                    productId: widget.model.id!,
                                    date: Timestamp.now());
                                context
                                    .read<WishListBloc>()
                                    .add(WishListEvent.add(
                                      model: model,
                                    ));
                              },
                        icon: isFav? const Icon(
                          Icons.favorite_outlined,
                          color: Colors.red,
                          size: 30,
                        ) :const Icon(
                          Icons.favorite_outlined,
                          color: Colors.white,
                          size: 30,
                        )
                        );
                  });
            },
          ),
        )
      ]),
    );
  }

  Widget buildIndicator({required int length}) {
    return AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: length,
      effect: const ExpandingDotsEffect(),
    );
  }

  Widget buildImage(String urlImage, int index) {
    return Container(
      width: double.infinity,
      //  margin: EdgeInsets.symmetric(horizontal: 24),
      color: Colors.grey,
      child: Image.network(
        urlImage,
        fit: BoxFit.cover,
      ),
    );
  }
}
