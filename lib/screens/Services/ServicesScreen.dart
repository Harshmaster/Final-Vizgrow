import 'package:flutter/material.dart';
import 'package:vizgrow_consulting/servicesList.dart';
import 'package:vizgrow_consulting/widgets/servicesCard.dart';

class Services extends StatefulWidget {
  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5E6E8),
      body: ListView(
        children: servicesList.map((variable) {
          return ServicesCard(
            imgLink: variable.imgLink,
            tagLine: variable.tagLine,
            navigator: variable.navigator,
          );
        }).toList(),
      ),
    );
  }
}
