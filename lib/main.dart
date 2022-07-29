import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fresh_n_fresh/applications/authentication/authentication_bloc.dart';
import 'package:fresh_n_fresh/applications/order/orders_bloc.dart';
import 'package:fresh_n_fresh/applications/category/category_bloc.dart';
import 'package:fresh_n_fresh/applications/products/products_bloc.dart';
import 'package:fresh_n_fresh/applications/quantity/counter_bloc.dart';
import 'package:fresh_n_fresh/applications/user_details/userdetails_bloc.dart';
import 'package:fresh_n_fresh/domain/core/injectable.dart';
import 'package:fresh_n_fresh/presentation/homepage/homepage.dart';
import 'package:fresh_n_fresh/presentation/login_signup/homepage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shared_preferences/shared_preferences.dart';

bool? isLogged;
Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
    await configureInjection();
  await Firebase.initializeApp();
  final prefs = await SharedPreferences.getInstance();
  isLogged = prefs.getBool('flag');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthenticationBloc(),
        ),
        BlocProvider(
          create: (context) => getIt<ProductsBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<CategoryBloc>()
        
        ),
        BlocProvider(
          create: (context) => CounterBloc(),
          
        ),
        BlocProvider(
          create: (context) => getIt<UserdetailsBloc>(),
       
        ),
        BlocProvider(
          create: (context) => OrdersBloc(),
          child: Container(),
        )
        

      
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor: Color.fromRGBO(237, 237, 237, 1),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          primarySwatch: Colors.blue,
          textTheme: GoogleFonts.muktaVaaniTextTheme(),
        ),
        debugShowCheckedModeBanner: false,
        home: (isLogged == true) ? const HomePageMain() : const HomePage(),
      ),
    );
  }
}
