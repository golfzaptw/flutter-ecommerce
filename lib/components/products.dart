import 'package:flutter/material.dart';
import 'package:flutter_android/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var productList = [
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
      itemCount: productList.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return SingleProduct(
          prodName: productList[index]['name'],
          prodPicture: productList[index]['picture'],
          prodOldPrice: productList[index]['old_price'],
          prodPrice: productList[index]['price'],
        );
      },
    );
  }
}

class SingleProduct extends StatelessWidget {
  final prodName;
  final prodPicture;
  final prodOldPrice;
  final prodPrice;

  const SingleProduct(
      {Key key,
      this.prodName,
      this.prodPicture,
      this.prodOldPrice,
      this.prodPrice})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: prodName,
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ProductDetails(
                    productDetailName: prodName,
                    productDetailPicture: prodPicture,
                    productDetailOldPrice: prodOldPrice,
                    productDetailPrice: prodPrice,
                  ))),
              child: GridTile(
                footer: Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: Text(
                      prodName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13.0,
                      ),
                    ),
                    title: Text(
                      '\$$prodPrice',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 13.0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    subtitle: Text(
                      '\$$prodOldPrice',
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
                  prodPicture,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )),
    );
  }
}
