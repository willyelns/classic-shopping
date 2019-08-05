import 'package:flutter/material.dart';
import 'package:shopping/pages/home/widgets/product-item.widget.dart';

class ProductList extends StatelessWidget {
  final Axis scrollDirection;

  const ProductList({Key key, @required this.scrollDirection})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: this.scrollDirection,
      children: <Widget>[
        ProductItem(
          title: 'Nike Dry-Fit Long Sleeve',
          brand: 'Nike',
          imagePath: 'assets/images/product-10.png',
          amount: 150,
        ),
        ProductItem(
          title: 'BeoPlay Speaker',
          brand: 'Bang and Olufsen',
          imagePath: 'assets/images/product-1.png',
          amount: 755,
        ),
        ProductItem(
          title: 'Leather Wristwatch',
          brand: 'Tag Heuer',
          imagePath: 'assets/images/product-2.png',
          amount: 150,
        ),
        ProductItem(
          title: 'Smart Bluetooth Speaker',
          brand: 'Google Inc.',
          imagePath: 'assets/images/product-3.png',
          amount: 150,
        ),
        ProductItem(
          title: 'Smart Luggage',
          brand: 'Smart inc.',
          imagePath: 'assets/images/product-4.png',
          amount: 150,
        ),
        ProductItem(
          title: 'Nike Dry-Fit Long Sleeve',
          brand: 'Nike',
          imagePath: 'assets/images/product-5.png',
          amount: 150,
        ),
        ProductItem(
          title: 'Nike Dry-Fit Long Sleeve',
          brand: 'Nike',
          imagePath: 'assets/images/product-6.png',
          amount: 150,
        ),
        ProductItem(
          title: 'Nike Dry-Fit Long Sleeve',
          brand: 'Nike',
          imagePath: 'assets/images/product-7.png',
          amount: 150,
        ),
        ProductItem(
          title: 'Nike Dry-Fit Long Sleeve',
          brand: 'Nike',
          imagePath: 'assets/images/product-8.png',
          amount: 150,
        ),
        ProductItem(
          title: 'Nike Dry-Fit Long Sleeve',
          brand: 'Nike',
          imagePath: 'assets/images/product-9.png',
          amount: 150,
        ),
      ],
    );
  }
}
