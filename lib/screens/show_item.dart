import 'package:flutter/material.dart';
import 'package:circle_d/widgets/left_drawer.dart';

class ItemList extends StatelessWidget {
  static List<Item> items = [];

  const ItemList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Item CircleD List'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: Builder(
        builder: (BuildContext context) {
          if (items.isEmpty) {
            return const Center(
              child: Text(
                'There are no items in your Inventory',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
          } else {
            return ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Text(
                      items[index].name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                        'Amount: ${items[index].amount}\nDescription: ${items[index].description}'),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}

class Item {
  final String name;
  final int amount;
  final String description;

  Item({
    required this.name,
    required this.amount,
    required this.description,
  });
}