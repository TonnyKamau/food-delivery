import 'package:flutter/material.dart';
import 'package:food_delivery/main/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // is not restarted.
       fontFamily: 'BeVietnamPro',
      ),
      home: const HomePage(),
    );
  }
}
