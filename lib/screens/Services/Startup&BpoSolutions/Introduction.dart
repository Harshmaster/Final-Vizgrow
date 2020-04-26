import 'package:flutter/material.dart';
import 'package:vizgrow_consulting/StartupList.dart';
import 'package:vizgrow_consulting/widgets/Generalcard.dart';

class StartupIntroduction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(0),
          height: MediaQuery.of(context).size.height - 80,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      child: ClipRRect(
                        child:
                            Image.asset("assets/images/overview/nurturing.PNG"),
                      ),
                    ),
                    Positioned(
                      child: Text('Startup and BPO Services'),
                    )
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 35, vertical: 15),
                  height: 5,
                  color: Colors.blue,
                ),
                Text('CHOOSE FROM OUR RANGE OF SERVICES'),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: startupList.map((variable) {
                      return GeneralCard(
                        imgLink: variable.imgLink,
                        description: variable.description,
                        tagLine: variable.tagLine,
                        isLeft:variable.isLeft,
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
