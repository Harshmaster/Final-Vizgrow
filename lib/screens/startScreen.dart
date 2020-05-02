import 'package:flutter/material.dart';
import 'dart:async';
import 'package:vizgrow_consulting/screens/OverviewScreen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pop();
      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Overview()));
    });
    return Scaffold(
      backgroundColor: Color(0xff007FFF),
      body: ListView(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/images/outofthebox5.jpg',
                  ),
                  fit: BoxFit.cover),
            ),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width * 1.415,
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            height: 150,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/logo3.jpg'),
                    fit: BoxFit.contain)),
          ),
        ],
      ),
    );
  }
}
