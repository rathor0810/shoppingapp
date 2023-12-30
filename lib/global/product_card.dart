import 'package:flutter/material.dart';
import 'package:shopping_app/global/global_product.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final double price;
  final String image;
  final Color backgroundcolor;

  const ProductCard({
    super.key,
    required this.title,
    required this.price,
    required this.image,
    required this.backgroundcolor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
            color: backgroundcolor,
            borderRadius: BorderRadius.circular(20)),
        margin: const EdgeInsets.all(10),
        // color: const Color.fromRGBO(216, 249, 253, 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 5),
            Text(
              '\$${price.toStringAsFixed(2)}',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(height: 5),
            Center(child: Image(image: AssetImage(image))),
          ],
        ),
      ),
    );
  }
}
