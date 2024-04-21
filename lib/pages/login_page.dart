import 'package:flutter/material.dart';
import 'package:food_delivery/components/my_button.dart';
import 'package:food_delivery/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.lock_open_rounded,
              size: 100, color: Theme.of(context).colorScheme.inversePrimary),
          const SizedBox(
            height: 25,
          ),
          Text(
            'Food Delivery App',
            style: TextStyle(
              color: Theme.of(context).colorScheme.inversePrimary,
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
          MyButton(text: 'Sign in', onTap: () {}),
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
              Text(
                'Sign up',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  fontSize: 16,
                  fontFamily: 'OpenSans',
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
