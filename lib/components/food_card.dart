import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery/components/image_container.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({
    super.key,
    required this.title,
    required this.preparationTime,
    required this.price,
    required this.imageUrl,
    required this.isFavorite,
    required this.rating,
  });

  final String title;
  final String preparationTime;
  final String price;
  final String imageUrl;
  final bool isFavorite;
  final String rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      width: MediaQuery.of(context).size.width * 0.4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ImageContainer(
                height: MediaQuery.of(context).size.height * 0.37,
                width: MediaQuery.of(context).size.width * 0.4,
                imageUrl: imageUrl,
                borderRadius: 20,
                isFavorite: isFavorite,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onTertiary,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontFamily: 'OpenSans',
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '$preparationTime min',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: Theme.of(context).colorScheme.onTertiary,
                          ),
                    ),
                    Row(
                      children: [
                        const FaIcon(
                          FontAwesomeIcons.solidStar,
                          color: Colors.amber,
                          size: 14,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          rating,
                          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                                color: Theme.of(context).colorScheme.onTertiary,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$$price',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onTertiary,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        fontFamily: 'OpenSans',
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Theme.of(context).colorScheme.onTertiary,
                      radius: 15,
                      child: Center(
                        child: Icon(
                          Icons.add,
                          color: Theme.of(context).colorScheme.surface,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}