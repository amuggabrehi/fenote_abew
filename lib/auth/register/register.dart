import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../login/login.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);
  static String routeName = '/register';
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
        children: [
          SizedBox(height: 10.0),
          Text(
            'Welcome to Fenote Abew ..\nCreate a new account',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
               ),
          ),
          SizedBox(height: 30.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Already have an account  ',
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(CupertinoPageRoute(builder: (_) => Login()));
                },
                child: Text(
                  'Login',
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
