import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

void main() {
  timeDilation = 5;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restaurant Animation',
      home: RestaurantListScreen(),
    );
  }
}

class Restaurant {
  final String name;
  final String image;
  final String details;
  final List<String> items;

  Restaurant({
    required this.name,
    required this.image,
    required this.details,
    required this.items,
  });
}

class RestaurantListScreen extends StatelessWidget {
  RestaurantListScreen({super.key});

  final List<Restaurant> restaurants = [
    Restaurant(
      name: 'Chinese',
      image: 'assets/images/chinese.png',
      details:
          'A flavorful variety of dishes like chow mein, fried rice, Manchurian, and sweet & sour chicken, cooked with aromatic spices, soy sauce, and fresh vegetables for that signature savory taste.',
      items: [
        'Chicken Chow Mein',
        'Beef Manchurian',
        'Hot & Sour Soup',
        'Garlic Rice',
        'Szechuan Chicken',
      ],
    ),
    Restaurant(
      name: 'Pizza',
      image: 'assets/images/pizza.png',
      details:
          'Freshly baked with a crispy or soft crust, layered with rich tomato sauce, gooey mozzarella cheese, and a variety of toppings.',
      items: [
        'Chicken Tikka',
        'Afghani',
        'Fajita',
        'Siracha',
        'Margherita',
        'Pepperoni',
      ],
    ),
    Restaurant(
      name: 'Burger',
      image: 'assets/images/burger.png',
      details:
          'Juicy beef or chicken patties (or veggie options) served in toasted buns with lettuce, tomatoes, cheese, pickles, and house-made sauces.',
      items: [
        'Zinger Burger',
        'Crispy Chicken',
        'Jalapeno Melt',
        'Classic Beef',
        'Veggie Burger',
      ],
    ),
    Restaurant(
      name: 'Spicy BBQ',
      image: 'assets/images/bbq.png',
      details:
          'Grilled meats marinated in bold spices and slow-cooked to smoky perfection.',
      items: [
        'Malai Boti',
        'Beef Seekh Kebab',
        'Chicken Tikka Leg',
        'BBQ Wings',
        'Bihari Boti',
      ],
    ),
    Restaurant(
      name: 'Dessert',
      image: 'assets/images/dessert.png',
      details:
          'Delicious end-of-meal indulgences like soft brownies, creamy cheesecakes, molten lava cakes, traditional sweets, and ice cream.',
      items: [
        'Chocolate Lava Cake',
        'New York Cheesecake',
        'Waffles',
        'Brownie with Ice Cream',
        'Gulab Jamun',
      ],
    ),
    Restaurant(
      name: 'Shakes',
      image: 'assets/images/shake.png',
      details:
          'Thick, creamy milkshakes blended with real fruits, chocolate, or cookies, topped with whipped cream and syrup.',
      items: [
        'Oreo Shake',
        'KitKat Shake',
        'Banana Shake',
        'Vanilla',
        'Chocolate Brownie Shake',
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Restaurant'),
        backgroundColor: Color.fromARGB(255, 26, 4, 4),
      ),
      backgroundColor: Color.fromARGB(255, 252, 219, 76),
      body: ListView.builder(
        itemCount: restaurants.length,
        itemBuilder: (context, index) {
          final restaurant = restaurants[index];
          return ListTile(
            leading: Hero(
              tag: restaurant.image,
              child: Image.asset(
                restaurant.image,
                width: 60,
                height: 60,
              ),
            ),
            title: Text(
              restaurant.name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      RestaurantDetailScreen(restaurant: restaurant),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class RestaurantDetailScreen extends StatelessWidget {
  final Restaurant restaurant;

  const RestaurantDetailScreen({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(restaurant.name),
        backgroundColor: Color.fromARGB(255, 7, 0, 0),
      ),
      backgroundColor: Color.fromARGB(255, 233, 227, 143),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Hero(
            tag: restaurant.image,
            child: Image.asset(
              restaurant.image,
              width: 400,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              restaurant.details,
              style: const TextStyle(fontSize: 18),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Items:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: restaurant.items
                  .map((item) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 2.0),
                        child: Text('• $item',
                            style: const TextStyle(fontSize: 16)),
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
