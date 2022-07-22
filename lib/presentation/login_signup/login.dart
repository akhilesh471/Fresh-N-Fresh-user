import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fresh_n_fresh/applications/authentication/authentication_bloc.dart';
import 'package:fresh_n_fresh/core/colors.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _obsecureText = true;
  final formkey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Form(
      key: formkey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          loginText('Welcome to', 16, 2, 0),
          loginText('Fresh N Fresh', 36, 1, 2),
          loginText('Please login to continue', 16, 2, 0),
          SizedBox(
            height: height * 0.02,
          ),
          textFieldUserLogin(
              "Email / Username", false, false, _emailController),
          SizedBox(
            height: height * 0.02,
          ),
          textFieldUserLogin(
              "Password", _obsecureText, true, _passwordController),
          SizedBox(
            height: height * 0.030,
          ),
          BlocBuilder<AuthenticationBloc, AuthenticationState>(
            builder: (context, state) {
       
              return GestureDetector(
                onTap: () {
                  context.read<AuthenticationBloc>().add(
                      AuthenticationEvent.login(
                          email: _emailController.text,
                          password: _passwordController.text,
                          context: context));
                         
                },
                child: Container(
                  height: height * 0.051,
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFF1C1C1C).withOpacity(0.2),
                        spreadRadius: 3,
                        blurRadius: 4,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: const Center(
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
          SizedBox(
            height: height * 0.020,
          ),
          Text(
            "FORGOT PASSWORD?",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: white,
                height: 1),
          )
        ],
      ),
    );
  }

  Widget textFieldUserLogin(String text, bool obscureText, bool visibleIcon,
      TextEditingController controller) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
          suffixIcon: visibleIcon
              ? GestureDetector(
                  onTap: () {
                    setState(() {
                      _obsecureText = !_obsecureText;
                    });
                  },
                  child: Icon(
                      _obsecureText ? Icons.visibility : Icons.visibility_off),
                )
              : const Text(''),
          hintText: text,
          hintStyle: const TextStyle(
            fontSize: 16,
            color: Color.fromARGB(255, 105, 136, 151),
            fontWeight: FontWeight.bold,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: const BorderSide(width: 0, style: BorderStyle.none),
          ),
          filled: true,
          fillColor: lightblue,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 0)),
    );
  }

  Text loginText(String text, double size, double height, double space) {
    return Text(
      text,
      style: TextStyle(
          fontSize: size, color: white, height: height, letterSpacing: space),
    );
  }
}
