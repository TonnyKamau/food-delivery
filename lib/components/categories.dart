import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery/components/food_card.dart';
import 'package:food_delivery/models/food_model.dart';
import 'package:get/get.dart';

class Categories extends StatelessWidget {
  const Categories({super.key, required this.tabs});
  final List<String> tabs;

  @override
  Widget build(BuildContext context) {
    final food = FoodModel.food;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: TabBar(
            isScrollable: true,
            splashFactory: NoSplash.splashFactory,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Colors.transparent,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Theme.of(context).colorScheme.onTertiary,
            ),
            unselectedLabelColor: Theme.of(context).colorScheme.onTertiary,
            labelColor: Theme.of(context).colorScheme.background,
            labelPadding: const EdgeInsets.symmetric(
                horizontal: 20), // Adjust padding as needed
            tabs: tabs
                .map(
                  (e) => Tab(
                    child: Text(
                      e,
                      style: const TextStyle(
                        fontSize: 16,
                        fontFamily: 'OpenSans',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.37,
            child: TabBarView(
                children: tabs.map((e) {
              return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: food.length,
                itemBuilder: (context, index) {
                  if (food[index].category == e) {
                    return InkWell(
                      onTap: () {
                        Get.toNamed('/food', arguments: food[index]);
                      },
                      child: FoodCard(
                        title: food[index].name,
                        preparationTime: food[index].preparationTime,
                        price: food[index].price.toString(),
                        imageUrl: food[index].image,
                        rating: food[index].rating,
                        isFavorite: food[index].isFavorite
                            ? const FaIcon(
                                FontAwesomeIcons.solidHeart,
                                color: Colors.redAccent,
                              )
                            : FaIcon(
                                FontAwesomeIcons.heart,
                                color:
                                    Theme.of(context).colorScheme.onTertiary,
                              ),
                      ),
                    );
                  } else {
                    return const SizedBox.shrink();
                  }
                },
              );
            }).toList()),
          ),
        ),
      ],
    );
  }
}
