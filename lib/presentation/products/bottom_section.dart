import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fresh_n_fresh/applications/quantity/counter_bloc.dart';
import 'package:fresh_n_fresh/domain/products/models/models.dart';
num? quantity;
num? totalAmount;
class ProductDetails extends StatelessWidget {
  final Products model;
  const ProductDetails({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
      child: BlocBuilder<CounterBloc, CounterState>(
        builder: (context, state) {
          quantity=state.count;
          totalAmount=model.price*state.count;
          return Column(
              children: [
                productDetails(size: size, type: 'Category', info: model.category),
                productDetails(size: size, type: 'Type', info: 'Fresh'),
                Row(
                  children: [
                    Text(
                      'Quantity',
                      style: const TextStyle(
                          fontSize: 20,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: size.width * 0.3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                              height: size.height * 0.03,
                              width: size.width * 0.2,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                color: Colors.blue,
                              )),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      context
                                          .read<CounterBloc>()
                                          .add(const CounterEvent.decrement());
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
                                        child: Text(
                                      quantity.toString(),
                                      style: const TextStyle(color: Colors.white),
                                    )),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      context
                                          .read<CounterBloc>()
                                          .add(const CounterEvent.increment());
                                    },
                                    child:const Icon(
                                      Icons.add,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'kg',
                            style: const TextStyle(
                                fontSize: 20,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                // productDetails(size: size, type: 'Total Amount', info: (model.price*state.count).toString(),)
Row(
      children: [
        SizedBox(
          width: size.width * 0.5,
          child: const Text(
            'Total Amount',
            style: TextStyle(
                fontSize: 20, color: Colors.grey, fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
            child: Text(
         '₹${totalAmount.toString()}',
          style: const TextStyle(
              fontSize: 25, color: Colors.black, ),
        ))
      ],
    )
              ],
            );
        },
      ),
    );
  }

  Row productDetails(
      {required Size size, required String type, required String info}) {
    return Row(
      children: [
        SizedBox(
          width: size.width * 0.5,
          child: Text(
            type,
            style: const TextStyle(
                fontSize: 20, color: Colors.grey, fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
            child: Text(
          info,
          style: const TextStyle(
              fontSize: 20, color: Colors.grey, fontWeight: FontWeight.bold),
        ))
      ],
    );
  }
}
