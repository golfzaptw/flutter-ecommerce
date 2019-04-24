import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      'name': 'Louis',
      'picture': 'images/products/bag.jpg',
      'old_price': 100,
      'price': 75,
    },
    {
      'name': 'Bicycle',
      'picture': 'images/products/bike.jpg',
      'old_price': 150,
      'price': 100,
    },
    {
      'name': 'Book Education',
      'picture': 'images/products/book.jpg',
      'old_price': 25,
      'price': 15,
    },
    {
      'name': 'iPhone XS Max',
      'picture': 'images/products/iphone.png',
      'old_price': 399,
      'price': 299,
    },
    {
      'name': 'T-Shirt',
      'picture': 'images/products/shirt.jpg',
      'old_price': 8,
      'price': 5,
    },
    {
      'name': 'Fila Shoes',
      'picture': 'images/products/shoes.jpg',
      'old_price': 19,
      'price': 16,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return Single_prod(
          prod_name: product_list[index]['name'],
          prod_picture: product_list[index]['picture'],
          prod_old_price: product_list[index]['old_price'],
          prod_price: product_list[index]['price'],
        );
      },
    );
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  const Single_prod(
      {Key key,
      this.prod_name,
      this.prod_picture,
      this.prod_old_price,
      this.prod_price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: prod_name,
          child: Material(
            child: InkWell(
              onTap: () {},
              child: GridTile(
                footer: Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: Text(
                      prod_name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13.0,
                      ),
                    ),
                    title: Text(
                      '\$$prod_price',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 13.0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    subtitle: Text(
                      '\$$prod_old_price',
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w800,
                        fontSize: 13.0,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ),
                ),
                child: Image.asset(
                  prod_picture,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )),
    );
  }
}
