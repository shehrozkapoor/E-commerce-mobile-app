import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firstapp/constant.dart';

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: RaisedButton(
        child: Text('logout'),
        onPressed: () {
          FirebaseAuth.instance.signOut();
        },
      )),
    );
  }
}
