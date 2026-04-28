import 'package:flutter/material.dart';
import '../models/item.dart';
import '../widgets/AppFooter.dart';
import '../widgets/itemGridCard.dart';

class ItemPage extends StatelessWidget {
  final List<Item> items = [
    Item(
      name: 'Sugar',
      price: 10000,
      imageUrl: 'https://picsum.photos/seed/sugar/400/300',
      stock: 20,
      rating: 4.5,
    ),
    Item(
      name: 'Salt',
      price: 5000,
      imageUrl: 'https://picsum.photos/seed/salt/400/300',
      stock: 30,
      rating: 4.2,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Marketplace'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: GridView.builder(
                itemCount: items.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  childAspectRatio: 0.72,
                ),
                itemBuilder: (context, index) {
                  final item = items[index];
                  return ItemGridCard(
                    item: item,
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        '/item',
                        arguments: item,
                      );
                    },
                  );
                },
              ),
            ),
          ),
          const AppFooter(),
        ],
      ),
    );
  }
}