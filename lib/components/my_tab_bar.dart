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
    return TabBar(
      tabAlignment: TabAlignment.start,
      dividerColor: Colors.transparent,
      isScrollable: true,
      splashFactory: NoSplash.splashFactory,
      indicatorSize: TabBarIndicatorSize.tab,

      indicatorColor: Colors.transparent,
      indicator: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Theme.of(context).colorScheme.onTertiary,
      ),
      unselectedLabelColor: Theme.of(context).colorScheme.onTertiary,
      labelColor: Theme.of(context).colorScheme.surface,
      labelPadding: const EdgeInsets.symmetric(horizontal: 20), 
      controller: tabController,

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
    );
  }
}
