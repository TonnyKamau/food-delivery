import 'package:flutter/material.dart';
import 'package:food_delivery/components/food_card.dart';
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

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late List<String> tabs;

  @override
  void initState() {
    super.initState();
    final food = FoodModel.food;
    tabs = food.map((e) => e.category).toSet().toList();
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  List<FoodModel> getFoodItems(String category) {
    return FoodModel.food.where((food) => food.category == category).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      drawer: const MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySilverAppBar(
            title: MyTabBar(tabController: _tabController, tabs: tabs),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(
                  indent: 25,
                  endIndent: 25,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                const MyCurrentLocation(),
                const MyDescriptionBox(),
              ],
            ),
          ),
        ],
        body: TabBarView(
          controller: _tabController,
          children: tabs.map((tab) {
            List<FoodModel> foodItems = getFoodItems(tab);
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: GridView.builder(
                itemCount: foodItems.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  childAspectRatio: 2 / 3,
                ),
                itemBuilder: (context, index) {
                  FoodModel foodItem = foodItems[index];
                  return FoodCard(
                    title: foodItem.name,
                    preparationTime: foodItem.preparationTime,
                    price: foodItem.price.toString(),
                    imageUrl: foodItem.image,
                    isFavorite: foodItem.isFavorite,
                    rating: foodItem.rating,
                  );
                },
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
