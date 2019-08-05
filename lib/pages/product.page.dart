import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String imagePath;
  final String title;
  final String brand;
  final double amount;

  const ProductPage(
      {Key key,
      @required this.imagePath,
      @required this.title,
      @required this.brand,
      @required this.amount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white.withOpacity(0),
            elevation: 0,
            expandedHeight: 500,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              background: Hero(
                tag: imagePath,
                child: Image.asset(
                  this.imagePath,
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          )
        ];
      },
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              top: 10,
              right: 10,
              left: 10,
            ),
            child: Text(
              this.title,
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text('By ${this.brand}'),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              'Details',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              'Nike Dri-FIT is a polyester fabric designed to help you keep dry so you can more comfortably work harder, longer.',
            ),
          )
        ],
      ),
    ));
  }
}
