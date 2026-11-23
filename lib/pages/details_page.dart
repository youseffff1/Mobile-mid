import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../models/product.dart';
import '../widgets/app_button.dart';
import '../widgets/icon_circle.dart';

// Bonus page: picture, name, price and description of one product.
class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key, required this.product});

  final Product product; // received from the Home page

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.tr(product.name))),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            IconCircle(icon: product.icon, size: 100),
            const SizedBox(height: 24),
            Text(
              context.tr(product.name),
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              '${product.price} ${context.tr('home.currency')}',
              style: TextStyle(
                fontSize: 20,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              context.tr(product.description),
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16),
            ),
            const Spacer(), // pushes the button to the bottom
            AppButton(
              text: context.tr('details.add_to_cart'),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(context.tr('details.added'))),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
