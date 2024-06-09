import 'package:equatable/equatable.dart';

class FoodModel extends Equatable {
  final String name;
  final String image;
  final double price;
  final String description;
  final String category;
  final int id;
  final bool isFavorite;
  final String calories;
  final String preparationTime;
  final List<String> ingredients;
  final String rating;

  const FoodModel({
    required this.name,
    required this.image,
    required this.price,
    required this.description,
    required this.category,
    required this.id,
    required this.calories,
    required this.preparationTime,
    required this.ingredients,
    required this.rating,
    required this.isFavorite,
  });

  static List<FoodModel> food = [
    const FoodModel(
      name: 'Salmon Salad',
      image:
          'https://plus.unsplash.com/premium_photo-1675676462517-1c3d6450260f?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fHNhbG1vbnxlbnwwfHwwfHx8MA%3D%3D',
      price: 24.00,
      description: 'Salmon salad with fresh vegetables',
      category: 'Salad',
      id: 1,
      calories: '320',
      preparationTime: '15',
      ingredients: [
        'Salmon',
        'Lettuce',
        'Tomato',
        'Cucumber',
        'Onion',
        'Olive oil',
        'Salt',
        'Pepper',
      ],
      rating: '4.5',
      isFavorite: true,
    ),
    const FoodModel(
      name: 'Fruit Salad',
      image:
          'https://images.unsplash.com/photo-1519996529931-28324d5a630e?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZnJ1aXQlMjBzYWxhZHxlbnwwfHwwfHx8MA%3D%3D',
      price: 12.00,
      description: 'Fruit salad with fresh fruits',
      category: 'Salad',
      id: 2,
      calories: '120',
      preparationTime: '10',
      ingredients: [
        'Apple',
        'Banana',
        'Orange',
        'Strawberry',
        'Blueberry',
        'Honey',
      ],
      rating: '4.0',
      isFavorite: true,
    ),
    const FoodModel(
      name: 'Pasta',
      image:
          'https://images.unsplash.com/photo-1608897013039-887f21d8c804?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8cGFzdGF8ZW58MHx8MHx8fDA%3D',
      price: 18.00,
      description: 'Pasta with tomato sauce and basil',
      category: 'Pasta',
      id: 3,
      calories: '450',
      preparationTime: '20',
      ingredients: [
        'Pasta',
        'Tomato',
        'Basil',
        'Olive oil',
        'Salt',
        'Pepper',
      ],
      rating: '4.5',
      isFavorite: false,
    ),
    const FoodModel(
      name: 'Pizza',
      image:
          'https://plus.unsplash.com/premium_photo-1673439305009-821f62df6d31?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      price: 22.00,
      description: 'Pizza with tomato sauce and cheese',
      category: 'Pizza',
      id: 4,
      calories: '350',
      preparationTime: '30',
      ingredients: [
        'Pizza dough',
        'Tomato sauce',
        'Mozzarella cheese',
        'Basil',
        'Olive oil',
        'Salt',
        'Pepper',
      ],
      rating: '4.5',
      isFavorite: false,
    ),
    const FoodModel(
      name: 'Burger',
      image:
          'https://images.unsplash.com/photo-1610440042657-612c34d95e9f?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fGJ1cmdlcnxlbnwwfHwwfHx8MA%3D%3D',
      price: 16.00,
      description: 'Burger with beef patty and vegetables',
      category: 'Burger',
      id: 5,
      calories: '500',
      preparationTime: '25',
      ingredients: [
        'Burger bun',
        'Beef patty',
        'Lettuce',
        'Tomato',
        'Onion',
        'Ketchup',
        'Mustard',
        'Mayonnaise',
      ],
      rating: '4.0',
      isFavorite: true,
    ),
    const FoodModel(
      name: 'Sushi',
      image:
          'https://images.unsplash.com/photo-1563612116625-3012372fccce?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fHN1c2hpfGVufDB8fDB8fHww',
      price: 30.00,
      description: 'Sushi with fresh fish and rice',
      category: 'Sushi',
      id: 6,
      calories: '400',
      preparationTime: '40',
      ingredients: [
        'Sushi rice',
        'Salmon',
        'Tuna',
        'Avocado',
        'Nori',
        'Soy sauce',
        'Wasabi',
        'Ginger',
      ],
      rating: '4.5',
      isFavorite: false,
    ),
    const FoodModel(
      name: 'Steak',
      image:
          'https://images.unsplash.com/photo-1633436375795-12b3b339712f?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fHN0ZWFrfGVufDB8fDB8fHww',
      price: 28.00,
      description: 'Steak with mashed potatoes and vegetables',
      category: 'Steak',
      id: 7,
      calories: '600',
      preparationTime: '35',
      ingredients: [
        'Steak',
        'Potato',
        'Butter',
        'Milk',
        'Lettuce',
        'Tomato',
        'Olive oil',
        'Salt',
        'Pepper',
      ],
      rating: '4.5',
      isFavorite: true,
    ),
    const FoodModel(
      name: 'Ice Cream',
      image:
          'https://plus.unsplash.com/premium_photo-1678198786405-28e947bb8a12?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aWNlJTIwY3JlYW18ZW58MHx8MHx8fDA%3D',
      price: 8.00,
      description: 'Ice cream with chocolate and nuts',
      category: 'Dessert',
      id: 8,
      calories: '250',
      preparationTime: '5',
      ingredients: [
        'Ice cream',
        'Chocolate',
        'Nuts',
      ],
      rating: '4.0',
      isFavorite: false,
    ),
    const FoodModel(
      name: 'Cake',
      image:
          'https://images.unsplash.com/photo-1602351447937-745cb720612f?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fGNha2V8ZW58MHx8MHx8fDA%3D',
      price: 10.00,
      description: 'Cake with cream and fruits',
      category: 'Dessert',
      id: 9,
      calories: '300',
      preparationTime: '15',
      ingredients: [
        'Cake',
        'Cream',
        'Fruits',
      ],
      rating: '4.5',
      isFavorite: true,
    ),
    const FoodModel(
      name: 'Smoothie',
      image:
          'https://images.unsplash.com/photo-1581660343294-78b0d03d4b21?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8c21vb3RoaWV8ZW58MHx8MHx8fDA%3D',
      price: 6.00,
      description: 'Smoothie with fresh fruits and yogurt',
      category: 'Drink',
      id: 10,
      calories: '180',
      preparationTime: '10',
      ingredients: [
        'Banana',
        'Strawberry',
        'Blueberry',
        'Yogurt',
        'Honey',
      ],
      rating: '4.0',
      isFavorite: false,
    ),
  ];

  @override
  List<Object?> get props => [
        name,
        image,
        price,
        description,
        category,
        id,
        calories,
        preparationTime,
        ingredients,
        rating,
        isFavorite,
      ];
}

class FoodManager {
  List<FoodModel> cart = [];
  List<FoodModel> favorites = [];

  void addToCart(FoodModel food) {
    cart.add(food);
  }

  void removeFromCart(FoodModel food) {
    cart.remove(food);
  }

  void addToFavorites(FoodModel food) {
    favorites.add(food);
  }

  void removeFromFavorites(FoodModel food) {
    favorites.remove(food);
  }

  bool isInCart(FoodModel food) {
    return cart.contains(food);
  }

  bool isFavorite(FoodModel food) {
    return favorites.contains(food);
  }

  List<FoodModel> getCartItems() {
    return List.unmodifiable(cart);
  }

  List<FoodModel> getFavoriteItems() {
    return List.unmodifiable(favorites);
  }
}
