import 'package:flutter/material.dart';
import 'package:vizgrow_consulting/widgets/OverviewCard.dart';

import '../../../ItList.dart';

class ITIntroduction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'VizGrow',
          style: TextStyle(
            fontSize: 25,
            fontFamily: 'Montserrat',
            color: Color(0xff00CED1),
            fontWeight: FontWeight.w900,
          ),
        ),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 10),
            child: InkWell(
              child: Icon(
                Icons.person,
                color: Colors.black,
                size: 30,
              ),
            ),
          )
        ],
      ),
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
                        child: Image.asset("assets/images/business.jpg"),
                      ),
                    ),
                    // Positioned(
                    //   child: Text('Startup and BPO Services',style),
                    // )
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 35, vertical: 15),
                  height: 2.5,
                  color: Colors.blue,
                ),
                Text(
                  'CHOOSE FROM OUR RANGE OF SERVICES',
                  style: TextStyle(
                    fontSize: 17,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: SingleChildScrollView(
                    child: Column(
                      children: itList.map((variable) {
                        return Container(
                          margin: EdgeInsets.only(),
                          child: OverviewCard(
                            imgLink: variable.imgLink,
                            description: variable.description,
                            tagLine: variable.tagLine,
                          ),
                        );
                      }).toList(),
                    ),
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
