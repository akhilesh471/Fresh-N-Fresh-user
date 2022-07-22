import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fresh_n_fresh/applications/category/category_bloc.dart';
import 'package:fresh_n_fresh/applications/products/products_bloc.dart';
import 'package:fresh_n_fresh/core/colors.dart';
import 'package:fresh_n_fresh/presentation/homepage/homepage_downpart.dart';
import 'package:fresh_n_fresh/presentation/homepage/widgets/widgets.dart';
import 'package:fresh_n_fresh/presentation/nabvar/sidebar.dart';

class HomePageMain extends StatefulWidget {
  const HomePageMain({Key? key}) : super(key: key);

  @override
  State<HomePageMain> createState() => _HomePageMainState();
}

GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

class _HomePageMainState extends State<HomePageMain> {
  @override
  Widget build(BuildContext context) {
    context.read<CategoryBloc>().add(const CategoryEvent.getCategoryList());
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _globalKey,
      drawer: const Sidebar(),
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    // color: Colors.blue,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                  ),
                  height: height * 0.29,
                  width: double.infinity,
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                  ),
                  height: height * 0.25,
                  width: double.infinity,
                ),
                IconButton(
                    onPressed: () {
                      _globalKey.currentState?.openDrawer();
                    },
                    icon: Icon(
                      Icons.menu,
                      color: Colors.blue,
                    )),
                Positioned(
                  top: 40,
                  left: 40,
                  child: title('Épicerie', Colors.grey, Colors.black),
                ),
                Positioned(
                  top: 75,
                  left: 40,
                  child: title(
                    'Grocceries',
                    const Color.fromRGBO(27, 136, 202, 1),
                    const Color.fromARGB(255, 5, 51, 89),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 40,
                  child: Container(
                    width: width * 0.8,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(241, 241, 241, 1),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.6),
                          spreadRadius: 2,
                          blurRadius: 7,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: TextField(
                      onChanged: (value) {},
                      // controller: _textController,
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          errorBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          contentPadding: EdgeInsets.all(10),
                          hintStyle: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 193, 191, 191),
                              fontStyle: FontStyle.italic),
                          hintText: 'Search Something'),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 39,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(30),
                          topRight: Radius.circular(30)),
                    ),
                    height: height * 0.061,
                    width: width * 0.15,
                    child: const Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  child: ClipPath(
                    clipper: Clip1Clipper(),
                    child: Container(
                      height: height * 0.1,
                      width: width * 0.25,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
            BlocBuilder<CategoryBloc, CategoryState>(
              builder: (context, state) {
                return (state.isLoading == true)
                    ? SizedBox()
                    : Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: height * 0.06,
                          // color:Colors.amber,
                          width: double.infinity,
                          // color: backgroundColor,
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  context.read<ProductsBloc>().add(
                                      ProductsEvent.getAllProducts(
                                          filterKey: 'All'));
                                },
                                child: Container(
                                  height: height * 0.042,
                                  width: width * 0.2,
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(25)),
                                  child: Center(
                                      child: Text('All',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white))),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  child: ListView.builder(
                                      shrinkWrap: true,
                                      scrollDirection: Axis.horizontal,
                                      itemCount: state.categoryList.length,
                                      itemBuilder: (context, index) {
                                        return GestureDetector(
                                          onTap: () {
                                            context.read<ProductsBloc>().add(
                                                ProductsEvent.getAllProducts(
                                                    filterKey: state
                                                        .categoryList[index]
                                                        .name));
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Container(
                                              // height: height*0.2,
                                              width: width * 0.3,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(25),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.6),
                                                    spreadRadius: 2,
                                                    blurRadius: 7,
                                                    offset: const Offset(0, 3),
                                                  ),
                                                ],
                                              ),
                                              child: Center(
                                                  child: Text(
                                                state.categoryList[index].name,
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.grey),
                                              )),
                                            ),
                                          ),
                                        );
                                      }),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
              },
            ),
            SizedBox(
              height: height * 0.009,
            ),
            HomePageDownSession()
          ],
        ),
      ),
    );
  }
}

class Clip1Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);

    path.quadraticBezierTo(0, size.height, 0, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
