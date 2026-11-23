import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../models/product.dart';
import '../widgets/product_card.dart';
import 'details_page.dart';
import 'settings_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.onThemeChanged});

  final ValueChanged<bool> onThemeChanged;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.tr('home.title')),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SettingsPage(onThemeChanged: onThemeChanged),
                ),
              );
            },
          ),
        ],
      ),
      // A grid with 2 products in each row.
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemBuilder: (context, index) {
          final product = products[index];
          return ProductCard(
            product: product,
            onTap: () {
              // Bonus: open the details page and send it the product.
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsPage(product: product),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
