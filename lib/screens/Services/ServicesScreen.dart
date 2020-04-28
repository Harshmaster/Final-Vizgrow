import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:vizgrow_consulting/servicesList.dart';

class Services extends StatefulWidget {
  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  List<Image> imageList = [
    Image.asset("assets/ServicesIcons/Covid.png"),
    Image.asset("assets/ServicesIcons/StartupBPO.png"),
    Image.asset("assets/ServicesIcons/HRservices.png"),
    Image.asset("assets/ServicesIcons/ITservices.png"),
    Image.asset("assets/ServicesIcons/consultancy.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xffF5E6E8),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.width * 0.6,
                margin: EdgeInsets.only(left: 0, right: 0, top: 0),
                width: MediaQuery.of(context).size.width,
                child: Carousel(
                  autoplayDuration: Duration(milliseconds: 1900),
                  boxFit: BoxFit.cover,
                  autoplay: true,
                  animationCurve: Curves.easeInOut,
                  dotColor: Color(0xff183883).withOpacity(0.5),
                  animationDuration: Duration(milliseconds: 1600),
                  dotSize: 7.0,
                  dotIncreaseSize: 1.1,
                  dotIncreasedColor: Color(0xff00CED1),
                  dotBgColor: Colors.white,
                  dotPosition: DotPosition.bottomCenter,
                  dotVerticalPadding: 0.0,
                  showIndicator: true,
                  onImageChange: (a, b) {},
                  indicatorBgPadding: 10.0,
                  images: servicesList.map((variable) {
                    return Container(
                      width: 100,
                      height: 100,
                      child: Image.asset(
                        variable.imgLink,
                        fit: BoxFit.cover,
                      ),
                    );
                  }).toList(),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width * 1.1,
                child: GridView(
                  scrollDirection: Axis.vertical,
                  padding: const EdgeInsets.all(10),
                  children: servicesList.map((catData) {
                    return Container(
                      width: 50,
                      height: 50,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      catData.navigator));
                        },
                        child: Card(
                          elevation: 6,
                          margin: EdgeInsets.all(0),
                          child: Column(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(top: 20),
                                width: 50,
                                height: 50,
                                child: imageList[catData.index],
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 20),
                                child: Text(
                                  catData.tagLine,
                                  style: TextStyle(
                                      fontFamily: "Montserrat", fontSize: 11),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 1.2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
