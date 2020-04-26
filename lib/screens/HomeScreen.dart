import 'package:flutter/material.dart';
import 'OverviewScreenTabBar.dart';

class HomeScreen extends StatelessWidget {
      navigateScreen(context) {
      Future.delayed(const Duration(milliseconds: 1000), () {
        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => OverallTabBar()));
      });
    }


  @override
  Widget build(BuildContext context) {
    navigateScreen(context);
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
