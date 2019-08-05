import 'package:flutter/material.dart';
import 'package:shopping/pages/home/widgets/category-item.widget.dart';

class CategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CategoryItem(
            imagePath: 'assets/images/Icon_Devices.png',
          ),
          CategoryItem(
            imagePath: 'assets/images/Icon_Gadgets.png',
          ),
          CategoryItem(
            imagePath: 'assets/images/Icon_Gaming.png',
          ),
          CategoryItem(
            imagePath: 'assets/images/Icon_Mens_Shoe.png',
          ),
          CategoryItem(
            imagePath: 'assets/images/Icon_Womens_Shoe.png',
          ),
        ],
      ),
    );
  }
}
