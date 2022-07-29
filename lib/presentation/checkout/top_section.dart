import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fresh_n_fresh/applications/authentication/authentication_bloc.dart';
import 'package:fresh_n_fresh/applications/user_details/userdetails_bloc.dart';
import 'package:fresh_n_fresh/domain/products/models/models.dart';
import 'package:fresh_n_fresh/domain/user/models/model.dart';
import 'package:fresh_n_fresh/presentation/products/bottom_section.dart';
UserModel? currentUserModel;
class UserDetails extends StatelessWidget {
  final Products model;
  const UserDetails({
    Key? key,
    required this.size,
    required this.model,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
             BlocBuilder<UserdetailsBloc, UserdetailsState>(
              builder: (context, state) {
                     currentUserModel=state.model;
                return Container(
                  padding: EdgeInsets.all(8),
                  color: Colors.white,
                  height: size.height * 0.2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      subTitle(title: 'Delivery Address', size: 20),
                      const Divider(
                        thickness: 2,
                      ),
                      subTitle(title: state.model.name, size: 16),
                      Expanded(
                          child: subTitle(title: 'Delivery Address', size: 16)),
                    ],
                  ),
                );
              },
            ),
          
        SizedBox(
          height: size.height * 0.03,
        ),
        Container(
          padding: EdgeInsets.all(8),
          color: Colors.white,
          height: size.height * 0.2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              subTitle(title: 'Product Details', size: 20),
              const Divider(
                thickness: 2,
              ),
              Row(
                children: [
                  Container(
                    height: size.height * 0.1,
                    width: size.width * 0.2,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        image: DecorationImage(
                            image: NetworkImage(model.image![0]),
                            fit: BoxFit.fill)),
                  ),
                  SizedBox(
                    width: size.width * 0.05,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      productDetails(
                          info: 'Name',
                          details: model.name,
                          width: size.width * 0.09),
                      productDetails(
                          info: 'Quantity',
                          details: quantity.toString(),
                          width: size.width * 0.041),
                      productDetails(
                          info: 'Total',
                          details: '₹${totalAmount.toString()}',
                          width: size.width * 0.108),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }

  Container productDetails(
      {required String info, required String details, required double width}) {
    return Container(
        width: size.width * 0.63,
        child: Row(
          children: [
            subTitle(title: info, size: 16),
            SizedBox(
              width: width,
            ),
            Text(details,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ))
          ],
        ));
  }

  Text subTitle({required String title, required double size}) {
    return Text(
      title,
      style: TextStyle(fontSize: size, fontWeight: FontWeight.bold),
    );
  }
}
