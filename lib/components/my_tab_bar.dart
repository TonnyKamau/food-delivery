import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_model.dart';

class MyTabBar extends StatelessWidget {
  final TabController tabController;
  const MyTabBar({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    final food = FoodModel.food;
    // Extract categories from the food model and convert them to a Set to remove duplicates
    final tabs = food.map((e) => e.category).toSet().toList();
    return Container(
      margin: const EdgeInsets.only(left: 25, right: 25),
      child: TabBar(
        isScrollable: true,
        splashFactory: NoSplash.splashFactory,
        indicatorSize: TabBarIndicatorSize.tab,
        unselectedLabelColor: Theme.of(context).colorScheme.onTertiary,
        labelPadding: const EdgeInsets.symmetric(horizontal: 20),
        controller: tabController,
        indicatorColor: Theme.of(context).colorScheme.primary,
        labelColor: Theme.of(context).colorScheme.primary,
        labelStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          fontFamily: 'OpenSans',
        ),
        tabs: [
          for (final tab in tabs)
            Tab(
              text: tab,
            ),
        ],
      ),
    );
  }
}
