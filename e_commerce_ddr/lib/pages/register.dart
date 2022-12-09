// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:e_commerce_ddr/main.dart';
import 'package:decorated_dropdownbutton/decorated_dropdownbutton.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _rememberme = false;

  @override
  Widget build(BuildContext context) {
    Widget RegisterButton() {
      return Container(
        padding: const EdgeInsets.symmetric(vertical: 25.0),
        width: 230,
        //alignment: Alignment.topLeft,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 5.0,
              primary: Colors.redAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
            onPressed: () async {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => HomePage()),
              // );
            },
            child: const Text(
              "Register",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 1.5,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
              ),
            )),
      );
    }

    Widget Name() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            "Name",
            style: TextStyle(
                color: Colors.redAccent,
                fontSize: 18,
                fontWeight: FontWeight.w500),
            //style: kLabelStyle,
          ),
          const SizedBox(
            height: 15.0,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: const TextField(
              obscureText: true,
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Roboto',
              ),
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.redAccent, width: 1.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 250, 59, 59), width: 1.0),
                ),
                contentPadding: EdgeInsets.only(top: 14.0),
                prefixIcon: Icon(
                  Icons.person,
                  color: Colors.redAccent,
                ),
                hintText: 'Josh Dellas',
              ),
            ),
          )
        ],
      );
    }

    var items = ['Male', 'Female'];
    String gend = 'Male';
    Widget Gender() {
      return Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
          Widget>[
        const Text(
          "Select Gender",
          style: TextStyle(
              color: Colors.redAccent,
              fontSize: 18,
              fontWeight: FontWeight.w500),
          //style: kLabelStyle,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Container(
            child: DecoratedDropdownButton(
                value: gend,
                icon: const Icon(Icons.keyboard_arrow_down),
                items: items.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    gend = newValue as String;
                  });
                },
                border: Border.all(color: Colors.redAccent, width: 1), //border
                borderRadius: BorderRadius.circular(10), //border radius
                style: const TextStyle(
                    //text style
                    color: Color.fromARGB(255, 48, 2, 2),
                    fontSize: 15,
                    fontFamily: 'Arial Narrow'))),
      ]);
    }

    Widget Contact() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            "Contact Number",
            style: TextStyle(
                color: Colors.redAccent,
                fontSize: 18,
                fontWeight: FontWeight.w500),
            //style: kLabelStyle,
          ),
          const SizedBox(
            height: 15.0,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: const TextField(
              obscureText: true,
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Roboto',
              ),
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.redAccent, width: 1.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 250, 59, 59), width: 1.0),
                ),
                contentPadding: EdgeInsets.only(top: 14.0),
                prefixIcon: Icon(
                  Icons.phone_android,
                  color: Colors.redAccent,
                ),
                hintText: 'XXXX-XXXXXXX',
              ),
            ),
          )
        ],
      );
    }

    Widget buildPasswordTF() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            "Password",
            style: TextStyle(
                color: Colors.redAccent,
                fontSize: 18,
                fontWeight: FontWeight.w500),
            //style: kLabelStyle,
          ),
          const SizedBox(
            height: 15.0,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: const TextField(
              obscureText: true,
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Roboto',
              ),
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.redAccent, width: 1.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 250, 59, 59), width: 1.0),
                ),
                contentPadding: EdgeInsets.only(top: 14.0),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.redAccent,
                ),
                hintText: 'Password',
              ),
            ),
          )
        ],
      );
    }

    Widget buildEmailTF() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            "Email",
            style: TextStyle(
                color: Colors.redAccent,
                fontSize: 18,
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: const TextField(
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Roboto',
              ),
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 250, 59, 59), width: 1.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 250, 59, 59), width: 1.0),
                ),
                contentPadding: EdgeInsets.only(top: 14.0),
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.redAccent,
                ),
                hintText: 'abc.xyz@nu.edu.pk',
              ),
            ),
          )
        ],
      );
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.redAccent,
        title: const Text('Sign Up'),
      ),
      body: Stack(children: <Widget>[
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(color: Colors.white),
        ),
        Container(
          height: double.infinity,
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(
              horizontal: 40.0,
              vertical: 70.0,
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Name(),
                  const SizedBox(height: 20.0),
                  buildEmailTF(),
                  const SizedBox(height: 20.0),
                  Contact(),
                  const SizedBox(height: 20.0),
                  buildPasswordTF(),
                  const SizedBox(height: 20.0),
                  Gender(),
                  const SizedBox(height: 20.0),
                  RegisterButton(),
                ]),
          ),
        ),
      ]),
    );
  }
}
