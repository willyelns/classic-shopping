import 'package:flutter/material.dart';
import 'package:shopping/widgets/search-box.widget.dart';
import 'package:shopping/pages/home/widgets/product-list.widget.dart';
import 'package:shopping/pages/home/widgets/category-list.widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(height: 20),
              SearchBox(),
              SizedBox(height: 20),
              Text(
                'Categories',
                style: Theme.of(context).textTheme.headline,
              ),
              SizedBox(height: 20),
              Container(
                height: 90,
                child: CategoryList(),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Best Selling',
                    style: Theme.of(context).textTheme.headline,
                  ),
                  FlatButton(
                    onPressed: () => {},
                    child: Text(
                      'See All',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                height: 300,
                child: ProductList(
                  scrollDirection: Axis.horizontal,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
