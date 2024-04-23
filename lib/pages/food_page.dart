import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_model.dart';
import 'package:get/get.dart';

class FoodPage extends StatelessWidget {
  const FoodPage({super.key});

  @override
  Widget build(BuildContext context) {
    FoodModel food = Get.arguments ?? FoodModel.food[0];
    return const Placeholder();
  }
}