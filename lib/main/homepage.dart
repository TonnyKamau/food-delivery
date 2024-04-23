import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery/components/categories.dart';
import 'package:food_delivery/components/header.dart';
import 'package:food_delivery/components/my_drawer.dart';
import 'package:food_delivery/components/my_appbar.dart';
import 'package:food_delivery/models/food_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final food = FoodModel.food;
    final tabs = food.map((e) => e.category).toSet().toList();

    return DefaultTabController(
        initialIndex: 0,
        length: tabs.length,
        child: Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
          appBar: MyAppBar(
            title: Center(
              child: Text(
                'Home',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onTertiary,
                  fontFamily: 'OpenSans',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          drawer: const MyDrawer(),
          body: ListView(children: [
            const Header(),
            const SizedBox(
              height: 20,
            ),
            Categories(tabs: tabs),
            const SizedBox(
              height: 20,
            ),
          ]),
        ));
  }
}
