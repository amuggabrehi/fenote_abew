import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../register/register.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
        children: [
          SizedBox(height: 60.0),
          Container(
            height: 170.0,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'assets/images/login.png',
            ),
          ),
          SizedBox(height: 10.0),
          Center(
            child: Text(
              'Welcome back!',
              style: TextStyle(
                fontSize: 23.0,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          Center(
            child: Text(
              'Log into your account and get started!',
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w300,
                color: Theme.of(context).accentColor,
              ),
            ),
          ),
          SizedBox(height: 25.0),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Don\'t have an account?'),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(CupertinoPageRoute(builder: (_) => Register()));
                },
                child: Text(
                  'Sign up',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).accentColor,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
