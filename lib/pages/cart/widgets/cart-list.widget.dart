import 'package:flutter/material.dart';
import 'package:shopping/pages/cart/widgets/cart-item.widget.dart';

class CartList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        CartItem(),
        CartItem(),
        CartItem(),
        CartItem(),
        CartItem(),
        CartItem(),
        CartItem(),
      ],
    );
  }
}
