import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:fresh_n_fresh/applications/wish_list/wish_list_bloc.dart';
import 'package:fresh_n_fresh/domain/wishlist/models/models.dart';
import 'package:fresh_n_fresh/presentation/nabvar/sidebar.dart';

class Wishlist extends StatefulWidget {
  const Wishlist({Key? key}) : super(key: key);

  @override
  State<Wishlist> createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  @override
  void initState() {
    context.read<WishListBloc>().add(WishListEvent.getData());
    currentIndex=5;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    var size = MediaQuery.of(context).size;
    int columnCount = 2;

    return Scaffold(
      appBar: AppBar(
          title: const Text("WISH LIST"),
          centerTitle: true,
          systemOverlayStyle: SystemUiOverlayStyle.light),
      body: SafeArea(
        child: BlocBuilder<WishListBloc, WishListState>(
          builder: (context, state) {
            return AnimationLimiter(
              child: GridView.count(
                physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                padding: EdgeInsets.all(w / 60),
                crossAxisCount: columnCount,
                mainAxisSpacing: 4,
                children: List.generate(
                  state.favorite.length
                  ,
                  (int index) {
                    return AnimationConfiguration.staggeredGrid(
                      position: index,
                      duration: const Duration(milliseconds: 500),
                      columnCount: columnCount,
                      child: ScaleAnimation(
                        duration: const Duration(milliseconds: 900),
                        curve: Curves.fastLinearToSlowEaseIn,
                        child: FadeInAnimation(
                          child: Container(
                            // height: size.height*0.4,
                            margin: EdgeInsets.only(
                                bottom: w / 20, left: w / 60, right: w / 60),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 40,
                                  spreadRadius: 10,
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                               
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Stack(
                                    children: [Container(
                                      decoration: BoxDecoration(
                                        image: DecorationImage(image: NetworkImage(state.favorite[index].image[0],),fit: BoxFit.cover),
                                          color: Colors.amber,
                                          borderRadius:
                                              BorderRadius.all(Radius.circular(9))),
                                      height: size.height * 0.13,
                                      width: size.width * 0.4,
                                    ),
                                    Positioned(right: 0,top: -10,
                                      child: IconButton(
                                          onPressed: () {
                                            context.read<WishListBloc>().add(WishListEvent.remove(id: state.favorite[index].id!));
                                          },
                                          icon: Icon(
                                            Icons.favorite_rounded,
                                            color: Colors.red,
                                          ),
                                        ),
                                    ),Positioned(top: -10,right:30,
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.local_grocery_store,color: Colors.white,),
                                        ),
                                    ),
                              ])
                                ),
                                Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    details(info: state.favorite[index].productName,size: 20),
                                     details(info: '₹${state.favorite[index].amount}',size: 20),
                                  ],
                                ),
                              //  ElevatedButton(onPressed: (){}, child: Text('data'))
                                
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget details({required String info,required double size}) {
    return Text(
      info,
      style: TextStyle(fontSize: size, fontWeight: FontWeight.bold),
    );
  }
}
