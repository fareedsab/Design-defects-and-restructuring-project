// ignore_for_file: deprecated_member_use

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:e_commerce_ddr/main.dart';
import 'package:e_commerce_ddr/pages/register.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _rememberme = false;

  @override
  Widget build(BuildContext context) {
    Widget _RegisterButton() {
      return Container(
        padding: const EdgeInsets.symmetric(vertical: 25.0),
        width: 130,
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Register()),
              );
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

    Widget _LoginButton() {
      return Container(
        padding: const EdgeInsets.symmetric(vertical: 25.0),
        width: 130,
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
              "Login",
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

    Widget _RememberMe() {
      return Container(
        child: Row(
          children: <Widget>[
            Theme(
                data: ThemeData(unselectedWidgetColor: Colors.redAccent),
                child: Checkbox(
                  value: _rememberme,
                  checkColor: Colors.white,
                  activeColor: Colors.redAccent,
                  onChanged: (value) {
                    setState(() {
                      _rememberme = value!;
                    });
                  },
                )),
            const Text("Remember Me",
                style: TextStyle(color: Colors.redAccent)),
          ],
        ),
      );
    }

    Widget _ForgotPassword() {
      return Container(
        alignment: Alignment.centerRight,
        child: TextButton(
            onPressed: (() => print("Forgot Password Button Pressed")),
            child: const Text("Forgot Password?",
                style: TextStyle(color: Colors.redAccent))),
      );
    }

    Widget _buildPasswordTF() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            "Password",
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
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
                  color: Colors.black,
                ),
                hintText: 'Password',
              ),
            ),
          )
        ],
      );
    }

    Widget _buildEmailTF() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            "Email",
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
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
                  color: Colors.black,
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
        title: const Text('Login'),
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
        ],
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
              vertical: 120.0,
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(height: 30.0),
                  _buildEmailTF(),
                  const SizedBox(height: 30.0),
                  _buildPasswordTF(),
                  _ForgotPassword(),
                  _RememberMe(),
                  Row(children: [
                    _LoginButton(),
                    const Spacer(),
                    _RegisterButton(),
                  ])

                  //_buildRecaptcha(),
                ]),
          ),
        ),
      ]),
    );
  }
}
