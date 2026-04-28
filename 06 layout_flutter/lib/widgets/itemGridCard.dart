import 'package:flutter/material.dart';
import '../models/item.dart';

class ItemGridCard extends StatelessWidget {
  final Item item;
  final VoidCallback onTap;

  const ItemGridCard({
    super.key,
    required this.item,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias, // biar ripple & image rapi
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 🔥 GANTI Expanded → SizedBox
            SizedBox(
              height: 120,
              width: double.infinity,
              child: Image.network(
                item.imageUrl,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(Icons.broken_image);
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                item.name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text('Rp ${item.price}'),
            ),

            Padding(
              padding: const EdgeInsets.all(8),
              child: Text('⭐ ${item.rating} | Stock: ${item.stock}'),
            ),
          ],
        ),
      ),
    );
  }
}