// ignore: import_of_legacy_library_into_null_safe
import 'package:carousel_pro/carousel_pro.dart' show Carousel;
import 'package:flutter/material.dart';
import 'package:e_commerce_ddr/pages/profile.dart';
import 'package:e_commerce_ddr/components/horizontal_listview.dart';
import 'package:e_commerce_ddr/components/products.dart';
import 'package:e_commerce_ddr/pages/cart.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names, sized_box_for_whitespace, unused_local_variable
    Widget image_carousel = Container(
      height: 250.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        // ignore: prefer_const_literals_to_create_immutables
        images: [
          const AssetImage('images/c1.jpg'),
          const AssetImage('images/m1.jpeg'),
          const AssetImage('images/IMG_1266.JPG'),
          const AssetImage('images/m2.jpg'),
          const AssetImage('images/w1.jpeg'),
          const AssetImage('images/w3.jpeg'),
          const AssetImage('images/w4.jpeg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastLinearToSlowEaseIn,
        animationDuration: const Duration(milliseconds: 1000),
        dotSize: 4.0,
        dotColor: Colors.black,
        indicatorBgPadding: 2.0,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.redAccent,
        title: const Text('ShopApp'),
        actions: <Widget>[
          const IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: null),
          IconButton(
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new Cart()));
              })
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            // header
            UserAccountsDrawerHeader(
              accountName: const Text('Noor us Sahar'),
              accountEmail: const Text('noorussahar27@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: const CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: const BoxDecoration(color: Colors.redAccent),
            ),
            // body
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => this.widget),
                );
              },
              child: const ListTile(
                title: Text('Home'),
                leading: Icon(Icons.home, color: Colors.redAccent),
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Profile()));
              },
              child: const ListTile(
                title: Text('My account'),
                leading: Icon(Icons.person, color: Colors.redAccent),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text('My orders'),
                leading: Icon(Icons.shopping_basket, color: Colors.redAccent),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new Cart()));
              },
              child: const ListTile(
                title: Text('Shopping Cart'),
                leading: Icon(Icons.shopping_cart, color: Colors.redAccent),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text('Categories'),
                leading: Icon(Icons.dashboard, color: Colors.redAccent),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text('Favorites'),
                leading: Icon(Icons.favorite, color: Colors.redAccent),
              ),
            ),
            const Divider(),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings, color: Colors.grey),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text('About'),
                leading: Icon(Icons.help, color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
      body: ListView(children: <Widget>[
        //image carousel
        image_carousel,
        //padding widget
        const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Categories',
              style: TextStyle(color: Colors.black, fontSize: 15),
            )),
        // horizontal list view
        HorizontalList(),

        //padding widget
        const Padding(
            padding: EdgeInsets.all(18.0),
            child: Text(
              'Recent Products',
              style: TextStyle(color: Colors.black, fontSize: 15),
            )),
        //Grid View
        Container(
          height: 320.0,
          child: Products(),
        )
      ]),
    );
  }
}
