import 'package:flutter/material.dart';
import 'package:vizgrow_consulting/widgets/OverviewCard.dart';
import '../overviewlist.dart';

class Overview extends StatefulWidget {
  @override
  _OverviewState createState() => _OverviewState();
}

class _OverviewState extends State<Overview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5E6E8),
      body: ListView(
        children: overviewList.map((variable) {
          return OverviewCard(
            imgLink: variable.imgLink,
            tagLine: variable.tagLine,
            description: variable.description,
          );
        }).toList(),
      ),
    );
  }
}
