import 'package:flutter/material.dart';
import 'package:food_delivery/auth/login_or_register.dart';
import 'package:food_delivery/main/cartpage.dart';
import 'package:food_delivery/main/homepage.dart';
import 'package:food_delivery/pages/food_page.dart';

import 'package:food_delivery/pages/settings_page.dart';
import 'package:food_delivery/themes/theme_provider.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Initialize Flutter binding
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Food Delivery',
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeProvider>(context).themeData,
      routes: {
        '/home': (context) => const HomePage(),
        '/settings': (context) => const SettingsPage(),
        '/food': (context) => const FoodPage(),
        '/cart': (context) => const CartPage(),
      },
      home: const LoginOrRegister(),
    );
  }
}
