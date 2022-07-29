import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fresh_n_fresh/applications/products/products_bloc.dart';
import 'package:fresh_n_fresh/presentation/products/viewproducts.dart';

class HomePageDownSession extends StatelessWidget {
  const HomePageDownSession({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  context.read<ProductsBloc>().add(ProductsEvent.getAllProducts(filterKey: 'All'));
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
        width: double.infinity,
        height: height * 0.56,
        color: Color.fromRGBO(237, 237, 237, 1),
        child: BlocBuilder<ProductsBloc, ProductsState>(
          builder: (context, state) {
            return (state.isLoading==true)?Center(child: CircularProgressIndicator(),): GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 300,
                    childAspectRatio: 4 / 5,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20),
                itemCount: state.productList.length,
                itemBuilder: (BuildContext ctx, index) {
                  return InkWell(onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                      return ViewProducts(model: state.productList[index], );
                    },));
                  },
                    child: Container(
                      
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 70,
                            backgroundColor: Colors.primaries[
                                Random().nextInt(Colors.primaries.length)],
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 30,
                                  left: 6,
                                  child: productDetails(state.productList[index].name, 25),
                                ),
                                Positioned(
                                  top: 60,
                                  left: 6,
                                  child: productDetails('${state.productList[index].price}/${state.productList[index].units}', 18),
                                ),
                                Positioned(
                                    bottom: 0,
                                    right: 0,
                                    child: Container(
                                      height: 70,
                                      width: 70,
                                      color: Colors.lime,
                                      child: Image(image: NetworkImage(state.productList[index].image![0],),fit: BoxFit.fill,
                                    )),
                              )  ],
                            ),
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Container(
                              decoration: BoxDecoration(boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  // spreadRadius: 1,
                                  blurRadius: 9,
                                  offset: const Offset(0, 3),
                                )
                              ]),
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(25)))),
                                child: const Text(
                                  'Add to Cart',
                                  style: TextStyle(
                                      fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                              ))
                        ],
                      ),
                    ),
                  );
                });
          },
        ));
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
