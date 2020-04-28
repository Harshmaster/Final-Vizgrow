import 'dart:math';

import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:vizgrow_consulting/screens/Career/Introduction.dart';
import 'package:vizgrow_consulting/screens/ContactUs/Introduction.dart';
import '../overviewlist.dart';
import 'ConsultancyPartner/Introduction.dart';
import 'Services/ServicesScreen.dart';

class Overview extends StatefulWidget {
  @override
  _OverviewState createState() => _OverviewState();
}

class _OverviewState extends State<Overview> {
  int i = 0;

  rotateImage(int a, int b) {
    if (a < b) {
      setState(() {
        i++;
      });
    } else {
      setState(() {
        i--;
      });
    }
    print(b);
  }

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
        appBar: AppBar(
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
        bottomNavigationBar: BottomNavigationBar(
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
                    fontFamily: 'Montserrat', fontWeight: FontWeight.w500),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              title: Text(
                "Consultancy Partner",
                style: TextStyle(
                    fontFamily: 'Montserrat', fontWeight: FontWeight.w600),
              ),
            ),
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
                "Contact Us",
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
                        height: MediaQuery.of(context).size.width * 1.5,
                        child: Stack(
                          children: <Widget>[
                            Transform.rotate(
                              angle: i * pi / 2,
                              child: Container(
                                margin: EdgeInsets.only(
                                  left: 30,
                                  right: 30,
                                  top: 0,
                                ),
                                width: double.infinity,
                                height:
                                    MediaQuery.of(context).size.width * 0.89,
                                child: Image.asset(
                                  'assets/images/no_vizgrow.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                              top: MediaQuery.of(context).size.width * 0.299,
                              right: 0,
                              left: 0,
                              child: Card(
                                elevation: 6,
                                margin: EdgeInsets.only(left: 20, right: 20),
                                child: Padding(
                                  padding: EdgeInsets.only(bottom: 20),
                                  child: Container(
                                    margin: EdgeInsets.only(
                                      left: 10,
                                      right: 10,
                                      top: 20,
                                      bottom: 20,
                                    ),
                                    height:
                                        MediaQuery.of(context).size.width * 0.9,
                                    width: MediaQuery.of(context).size.width,
                                    child: Carousel(
                                      boxFit: BoxFit.cover,
                                      autoplay: false,
                                      animationCurve: Curves.easeIn,
                                      dotColor: Color(0xff183883),
                                      animationDuration:
                                          Duration(milliseconds: 0),
                                      dotSize: 5.0,
                                      dotIncreaseSize: 1.1,
                                      dotIncreasedColor: Colors.yellow,
                                      dotBgColor: Colors.transparent,
                                      dotPosition: DotPosition.bottomCenter,
                                      dotVerticalPadding: 0.0,
                                      showIndicator: true,
                                      onImageChange: (a, b) {
                                        print(a);
                                        print(b);
                                        rotateImage(a, b);
                                      },
                                      indicatorBgPadding: 0.0,
                                      images: overviewList.map((variable) {
                                        return Column(
                                          children: <Widget>[
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                Container(
                                                  margin: EdgeInsets.only(
                                                      right: 15),
                                                  width: 80,
                                                  height: 80,
                                                  child: Image.asset(
                                                    variable.imgLink,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      20 -
                                                      40,
                                                  // margin: EdgeInsets.only(left: 95),
                                                  child: Text(
                                                    variable.tagLine,
                                                    style: TextStyle(
                                                      fontSize: 17,
                                                      fontFamily: "Montserrat",
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                // Container(
                                                //   margin: EdgeInsets.only(right: 15),
                                                //   width: 80,
                                                //   height: 80,
                                                //   child: Image.asset(
                                                //     variable.imgLink,
                                                //     fit: BoxFit.cover,
                                                //   ),
                                                // ),
                                                Expanded(
                                                  child: Container(
                                                    child: Text(
                                                      variable.description,
                                                      style: TextStyle(
                                                        color: Colors.black45,
                                                        fontFamily:
                                                            "Montserrat",
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            : widgetList[_currentIndex]);
  }
}
