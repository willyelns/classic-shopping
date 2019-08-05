import 'package:flutter/material.dart';
import 'package:shopping/pages/product.page.dart';

class ProductItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final String brand;
  final double amount;

  const ProductItem(
      {Key key,
      @required this.imagePath,
      @required this.title,
      @required this.brand,
      @required this.amount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(5),
      width: 150,
      color: Colors.black12,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          GestureDetector(
            onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductPage(
                            title: this.title,
                            brand: this.brand,
                            imagePath: this.imagePath,
                            amount: this.amount,
                          ),
                    ),
                  )
                },
            child: Hero(
              tag: imagePath,
              child: Image.asset(
                this.imagePath,
                width: 160,
                height: 160,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 40,
            child: Text(
              this.title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          SizedBox(height: 5),
          Text(
            this.brand,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(height: 5),
          Text(
            '\$ ${this.amount}',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
