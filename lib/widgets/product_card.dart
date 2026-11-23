import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../models/product.dart';
import 'icon_circle.dart';

// One product box in the Home grid.
class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product, required this.onTap});

  final Product product;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap, // InkWell makes the card tappable
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Expanded(child: Center(child: IconCircle(icon: product.icon, size: 36))),
              const SizedBox(height: 8),
              Text(
                context.tr(product.name),
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('${product.price} ${context.tr('home.currency')}'),
            ],
          ),
        ),
      ),
    );
  }
}
