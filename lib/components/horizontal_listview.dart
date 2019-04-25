import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            imageLocation: 'images/categories/bag.jpg',
            imageCaption: 'Bag',
          ),
          Category(
            imageLocation: 'images/categories/bike.jpg',
            imageCaption: 'Bike',
          ),
          Category(
            imageLocation: 'images/categories/education.jpg',
            imageCaption: 'Education',
          ),
          Category(
            imageLocation: 'images/categories/phone.jpg',
            imageCaption: 'Phone',
          ),
          Category(
            imageLocation: 'images/categories/shirt.jpg',
            imageCaption: 'T-Shirt',
          ),
          Category(
            imageLocation: 'images/categories/shoes.jpg',
            imageCaption: 'Shoes',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String imageLocation;
  final String imageCaption;

  const Category({Key key, this.imageLocation, this.imageCaption})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(
              imageLocation,
              width: 100.0,
              height: 80.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(
                imageCaption,
                style: TextStyle(fontSize: 12.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
