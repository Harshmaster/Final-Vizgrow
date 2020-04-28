import 'package:flutter/material.dart';
import 'package:vizgrow_consulting/screens/OverviewScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Overview(),
    );
  }
}
