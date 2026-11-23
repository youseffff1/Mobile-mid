import 'package:flutter/material.dart';

// What one product has.
class Product {
  const Product({
    required this.name,
    required this.description,
    required this.price,
    required this.icon,
  });

  final String name; // a key from the translation files
  final String description; // a key from the translation files
  final int price;
  final IconData icon; // the product picture
}

// The products shown on the Home page.
const List<Product> products = [
  Product(
    name: 'products.headphones',
    description: 'products.headphones_desc',
    price: 150,
    icon: Icons.headphones,
  ),
  Product(
    name: 'products.watch',
    description: 'products.watch_desc',
    price: 300,
    icon: Icons.watch,
  ),
  Product(
    name: 'products.phone',
    description: 'products.phone_desc',
    price: 1200,
    icon: Icons.phone_android,
  ),
  Product(
    name: 'products.laptop',
    description: 'products.laptop_desc',
    price: 2500,
    icon: Icons.laptop,
  ),
  Product(
    name: 'products.camera',
    description: 'products.camera_desc',
    price: 900,
    icon: Icons.camera_alt,
  ),
  Product(
    name: 'products.bag',
    description: 'products.bag_desc',
    price: 80,
    icon: Icons.backpack,
  ),
];
