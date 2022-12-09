// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  const Cart_products({Key? key}) : super(key: key);

  @override
  State<Cart_products> createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var Products_on_the_cart = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "price": "90",
      "size": "M",
      "color": "Black",
      "quantity": "1",
    },
    {
      "name": "Red Dress",
      "picture": "images/products/dress1.jpeg",
      "price": "90",
      "size": "M",
      "color": "Red",
      "quantity": "1",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: Products_on_the_cart.length,
        itemBuilder: (context, index) {
          return Single_cart_products(
            cart_name: Products_on_the_cart[index]["name"],
            cart_picture: Products_on_the_cart[index]["picture"],
            cart_color: Products_on_the_cart[index]["color"],
            cart_size: Products_on_the_cart[index]["size"],
            cart_qty: Products_on_the_cart[index]["quantity"],
            cart_price: Products_on_the_cart[index]["price"],
          );
        });
  }
}

class Single_cart_products extends StatelessWidget {
  final cart_name;
  final cart_price;
  final cart_picture;
  final cart_size;
  final cart_color;
  final cart_qty;

  Single_cart_products({
    this.cart_name,
    this.cart_price,
    this.cart_picture,
    this.cart_size,
    this.cart_color,
    this.cart_qty,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        // ======Image======
        leading: Image.asset(
          cart_picture,
          width: 80.0,
          height: 80.0,
        ),
        //======Product Name======
        title: Text(
          cart_name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                // =========Product Size=========
                const Padding(
                  padding: EdgeInsets.all(0.0),
                  child: Text("Size:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    cart_size,
                    style: const TextStyle(color: Colors.redAccent),
                  ),
                ),
                //==============Product Color============
                // const Padding(
                //   padding: EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                //   child: Text("Color:"),
                // ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                  child: Text(
                    cart_color,
                    style: const TextStyle(color: Colors.redAccent),
                  ),
                )
              ],
            ),

            //==========Product Price=============
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "\$${cart_price}",
                style: const TextStyle(
                    color: Colors.redAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0),
              ),
            )
          ],
        ),
        trailing: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.all(0.0)),
            Expanded(
              child:
                  IconButton(onPressed: () {}, icon: Icon(Icons.arrow_drop_up)),
            ),
            Padding(padding: EdgeInsets.all(4.0)),
            Text(
              cart_qty,
              textAlign: TextAlign.justify,
            ),
            Padding(padding: EdgeInsets.all(0.0)),
            Expanded(
              child: IconButton(
                  onPressed: () {}, icon: Icon(Icons.arrow_drop_down)),
            ),
          ],
        ),
      ),
    );
  }
}
