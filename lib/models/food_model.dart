import 'package:equatable/equatable.dart';

class FoodModel extends Equatable {
  final String name;
  final String description;
  final String image;
  final double price;
  final double rating;
  final int reviews;

  const FoodModel({
    required this.name,
    required this.description,
    required this.image,
    required this.price,
    required this.rating,
    required this.reviews,
  });

  @override
  List<Object?> get props => [name, description, image, price, rating, reviews];
}