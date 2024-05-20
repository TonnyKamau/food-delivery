import 'package:flutter/material.dart';

import 'package:food_delivery/components/my_current_location.dart';
import 'package:food_delivery/components/my_description_box.dart';
import 'package:food_delivery/components/my_drawer.dart';

import 'package:food_delivery/components/my_silver_app_bar.dart';
import 'package:food_delivery/components/my_tab_bar.dart';
import 'package:food_delivery/models/food_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  late List<String> tabs;

  @override
  void initState() {
    super.initState();
    final food = FoodModel.food;
    // Extract categories from the food model and convert them to a Set to remove duplicates
    tabs = food.map((e) => e.category).toSet().toList();
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      drawer: const MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySilverAppBar(
              title: MyTabBar(tabController: _tabController),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Divider(
                    indent: 25,
                    endIndent: 25,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  //my current location
                  const MyCurrentLocation(),
                  //my description box
                  const MyDescriptionBox(),
                ],
              )),
        ],
        body: TabBarView(
          controller: _tabController,
          children: tabs.map((tab) {
            return GridView.builder(
              itemCount: 30, // Replace with your item count
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Number of columns
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                childAspectRatio: 2 / 3, // Adjust the aspect ratio as needed
              ),
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.only(
                    top: index == 0
                        ? 0.0
                        : 8.0, // Apply no top padding to the first item
                    left: 8.0,
                    right: 8.0,
                    bottom: 8.0,
                  ),
                  child: Card(
                    child: Center(
                      child: Text('$tab Item $index'),
                    ),
                  ),
                );
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}
