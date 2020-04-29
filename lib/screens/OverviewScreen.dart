
import 'package:flutter/material.dart';
import 'package:vizgrow_consulting/screens/Career/Introduction.dart';
import 'package:vizgrow_consulting/screens/ContactUs/Introduction.dart';
import 'package:vizgrow_consulting/widgets/OverviewCard.dart';
import '../overviewlist.dart';
import 'ConsultancyPartner/Introduction.dart';
import 'Services/ServicesScreen.dart';

class Overview extends StatefulWidget {
  @override
  _OverviewState createState() => _OverviewState();
}

class _OverviewState extends State<Overview> {
  int _currentIndex = 0;

  List<Widget> widgetList = [
    Overview(),
    Services(),
    PartnerIntroduction(),
    CareerIntroduction(),
    ContactIntroduction(),
  ];

  onTabChanged(value) {
    print(value);
    setState(() {
      _currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: true,

        //  backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'vizGrow',
            style: TextStyle(
              fontSize: 25,
              fontFamily: 'Montserrat',
              color: Color(0xff00CED1),
              fontWeight: FontWeight.w900,
            ),
          ),
          actions: <Widget>[
            Container(
              height: double.infinity,
              child: Center(
                  child: Text(
                'Login',
                style: TextStyle(color: Colors.black),
              )),
            ),
            Container(
              margin: EdgeInsets.only(right: 12, left: 6),
              child: InkWell(
                child: Icon(
                  Icons.person,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 14),
              child: Icon(
                Icons.phone,
                color: Colors.black,
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 5,
          iconSize: 21,
          selectedFontSize: 14,
          unselectedFontSize: 13,
          onTap: onTabChanged,
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text(
                "Overview",
                style: TextStyle(
                    fontFamily: 'Montserrat', fontWeight: FontWeight.w600),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.build),
              title: Text(
                "Services",
                style: TextStyle(
                    fontFamily: 'Montserrat', fontWeight: FontWeight.w600),
              ),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.people),
                title: Column(
                  children: <Widget>[
                    Text('Consultancy'),
                    Text('Partner'),
                  ],
                )),
            BottomNavigationBarItem(
              icon: Icon(Icons.work),
              title: Text(
                "Career",
                style: TextStyle(
                    fontFamily: 'Montserrat', fontWeight: FontWeight.w600),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.contact_phone),
              title: Text(
                "Contact",
                style: TextStyle(
                    fontFamily: 'Montserrat', fontWeight: FontWeight.w600),
              ),
            ),
          ],
          selectedItemColor: Color(0xff00CED1),
        ),

        // backgroundColor: Color(0xffF5E6E8),
        body: _currentIndex == 0
            ? SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        child: Image.asset(
                          'assets/VMV.jpg',
                          fit: BoxFit.cover,
                        ),
                        // color: Colors.amber,
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.4,
                      ),
                      Container(
                        child: Column(
                            children: overviewList.map((value) {
                          return OverviewCard(
                            description: value.description,
                            imgLink: value.imgLink,
                            tagLine: value.tagLine,
                          );
                        }).toList()),
                      ),
                    ],
                  ),
                ),
              )
            : widgetList[_currentIndex]);
  }
}
