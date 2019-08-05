import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      margin: EdgeInsets.all(5),
      child: Row(
        children: <Widget>[
          Container(
            width: 100,
            height: 100,
            margin: EdgeInsets.all(10),
            child: Image.asset(
              'assets/images/product-1.png',
              fit: BoxFit.fitWidth,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Product Title'),
                Text(
                  '\$ 200,00',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 30,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 40,
                        alignment: Alignment.center,
                        child: FlatButton(
                          onPressed: () {},
                          child: Text('-'),
                        ),
                      ),
                      Container(
                        width: 40,
                        alignment: Alignment.center,
                        child: Text('1'),
                      ),
                      Container(
                        width: 40,
                        alignment: Alignment.center,
                        child: FlatButton(
                          onPressed: () {},
                          child: Text('+'),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
