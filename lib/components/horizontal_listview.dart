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
            image_location: 'images/categories/bag.jpg',
            image_caption: 'Bag',
          ),
          Category(
            image_location: 'images/categories/bike.jpg',
            image_caption: 'Bike',
          ),
          Category(
            image_location: 'images/categories/education.jpg',
            image_caption: 'Education',
          ),
          Category(
            image_location: 'images/categories/phone.jpg',
            image_caption: 'Phone',
          ),
          Category(
            image_location: 'images/categories/shirt.jpg',
            image_caption: 'T-Shirt',
          ),
          Category(
            image_location: 'images/categories/shoes.jpg',
            image_caption: 'Shoes',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  const Category({Key key, this.image_location, this.image_caption})
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
              image_location,
              width: 100.0,
              height: 80.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(
                image_caption,
                style: TextStyle(fontSize: 12.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
