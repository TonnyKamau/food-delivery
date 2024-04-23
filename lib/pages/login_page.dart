import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery/components/my_button.dart';
import 'package:food_delivery/components/my_textfield.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();
  void login() {
    Get.toNamed('/home');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/icons/lock.svg',
            color: Theme.of(context).colorScheme.onTertiary,
            height: 100,
            
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            'Food Delivery App',
            style: TextStyle(
              color: Theme.of(context).colorScheme.onTertiary,
              fontSize: 16,
              fontFamily: 'OpenSans',
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          MyTextField(
              controller: emailController,
              hintText: 'Email',
              obscureText: false),
          const SizedBox(
            height: 10,
          ),
          MyTextField(
              controller: passwordController,
              hintText: 'Password',
              obscureText: true),
          const SizedBox(
            height: 25,
          ),
          MyButton(text: 'Sign in', onTap: login),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Don\'t have an account?',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  fontSize: 16,
                  fontFamily: 'OpenSans',
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: widget.onTap,
                child: Text(
                  'Sign up',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onTertiary,
                    fontSize: 16,
                    fontFamily: 'OpenSans',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
