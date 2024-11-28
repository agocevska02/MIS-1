import 'package:flutter/material.dart';
import '../models/product.dart';
import './product_details_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<Product> products = [
    Product(
      name: 'Nike Court Vision',
      image: 'assets/patika2.jpg',
      description:
          'Nike Sportswear Club Fleece се долен дел тренерки кои носат класичен стил и удобност. Овој долен дел тренерки ќе стане основна гардероба во вашиот плакар...',
      price: 4952,
    ),
    Product(
      name: 'Nike Court Vision Alta',
      image: 'assets/patika1.jpg',
      description:
          'Nike Court Vision Alta се модерни патики кои нудат удобност и стил за секоја пригода.',
      price: 6190,
    ),
    Product(
      name: 'Adidas VL Court',
      image: 'assets/patika3.jpg',
      description:
          'Adidas VL Court се класични патики кои нудат удобност и стил за секојдневно носење. Со својот едноставен дизајн и висококвалитетни материјали, тие се идеални за секоја пригода.',
      price: 3990,
    ),
  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('213005'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailsScreen(product: product),
                ),
              );
            },
            child: Card(
              margin: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 200,
                    child: Image.asset(
                      product.image,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.name,
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Цена: ${product.price} ден.',
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 106, 112, 116),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
