// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:e_commerce_ddr/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": "120",
      "price": "90",
    },
    {
      "name": "Joggers",
      "picture": "images/products/shoe1.jpg",
      "old_price": "120",
      "price": "90",
    },
    {
      "name": "Red Dress",
      "picture": "images/products/dress1.jpeg",
      "old_price": "120",
      "price": "90",
    },
    {
      "name": "Red Heals",
      "picture": "images/products/hills2.jpeg",
      "old_price": "120",
      "price": "90",
    },
    {
      "name": "Trouser",
      "picture": "images/products/pants1.jpg",
      "old_price": "120",
      "price": "90",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            product_name: product_list[index]['name'],
            prod_img: product_list[index]['picture'],
            old_price: product_list[index]['old_price'],
            price: product_list[index]['price'],
          );
        });
  }
}

// ignore: camel_case_types
class Single_prod extends StatelessWidget {
  final product_name;
  final prod_img;
  final old_price;
  final price;

  Single_prod({
    this.product_name,
    this.prod_img,
    this.old_price,
    this.price,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: product_name,
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ProductDetails(
                      product_details_name: product_name,
                      product_details_old_price: old_price,
                      product_details_picture: prod_img,
                      product_details_price: price,
                    ))),
            child: GridTile(
                footer: Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: Text(
                      product_name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    title: Text(
                      "\$$price",
                      style: TextStyle(
                          color: Colors.redAccent, fontWeight: FontWeight.w800),
                    ),
                    subtitle: Text(
                      "\$$old_price",
                      style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w800,
                          decoration: TextDecoration.lineThrough),
                    ),
                  ),
                ),
                child: Image.asset(
                  prod_img,
                  fit: BoxFit.cover,
                )),
          ),
        ),
      ),
    );
  }
}
