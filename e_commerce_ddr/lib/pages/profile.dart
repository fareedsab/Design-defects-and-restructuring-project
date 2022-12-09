import 'package:flutter/material.dart';
import 'package:e_commerce_ddr/main.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget _info() {
    return ListView(
      children: const <Widget>[
        Center(
          heightFactor: 1.2,
          child: CircleAvatar(
            radius: 40,
            backgroundColor: Colors.grey,
            child: Icon(Icons.person, color: Colors.white, size: 70.0),
          ),
        ),
        Center(
          child: ListTile(
            title: Padding(
              padding: EdgeInsets.only(bottom: 10.0),
              child: Text(
                'Name',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            subtitle: Text(
              "Josh Dellas",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ),
        Divider(),
        Center(
          child: ListTile(
            title: Padding(
              padding: EdgeInsets.only(bottom: 10.0),
              child: Text(
                'Email',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            subtitle: Text(
              "joshdellas@gmail.com",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ),
        Divider(),
        Center(
          child: ListTile(
            title: Padding(
              padding: EdgeInsets.only(bottom: 10.0),
              child: Text(
                'Contact',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            subtitle: Text(
              "0335-23459876",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ),
        Divider(),
        Center(
          child: ListTile(
            title: Padding(
              padding: EdgeInsets.only(bottom: 10.0),
              child: Text(
                'Gender',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            subtitle: Text(
              "Female",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.redAccent,
            title: const Text('My Account Details'),
            actions: <Widget>[
              IconButton(
                  icon: const Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  })
            ]),
        body: Center(
            child: Container(
          alignment: Alignment.topLeft,
          height: 450,
          width: 300,
          // height: MediaQuery.of(context).size.height / 1.6,
          //width: MediaQuery.of(context).size.width / 2,
          decoration: BoxDecoration(
            border: Border.all(
                style: BorderStyle.solid, color: Colors.redAccent, width: 2.5),
            borderRadius: BorderRadius.circular(20),
            color: Color.fromARGB(255, 255, 244, 244),
          ),
          child: _info(),
        )));
  }
}
