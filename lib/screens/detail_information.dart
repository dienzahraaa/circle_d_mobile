// ignore_for_file: unnecessary_string_interpolations, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:circle_d/models/Product.dart';
import 'package:circle_d/screens/show_item.dart';
import 'package:circle_d/widgets/left_drawer.dart';
import 'package:flutter/material.dart';



class ProductDetailPage extends StatelessWidget {
  final Product item;

  ProductDetailPage({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(item.fields.name)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: ${item.fields.name}'),
            Text('Amount: ${item.fields.amount}'),
            Text('Price: ${item.fields.price}'),
            Text('Category: ${item.fields.category}'),
            Text('Description: ${item.fields.description}'),
            // Add other attributes
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Navigate back to the item list screen
                Navigator.pop(context);
              },
              child: Text('Back to Item List'),
            ),
          ],
        ),
      ),
    );
  }
}