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
    Image.asset("assets/ServicesIcons/consult.png"),
    Image.asset("assets/ServicesIcons/investinindia.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100], 
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                height: MediaQuery.of(context).size.width * 0.48,
                margin: EdgeInsets.only(left: 10, right: 10, top: 0),
                width: MediaQuery.of(context).size.width,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Carousel(
                    autoplayDuration: Duration(milliseconds: 5000),
                    boxFit: BoxFit.cover,
                    autoplay: true,
                    animationCurve: Curves.easeInOut,
                    dotColor: Color(0xff183883).withOpacity(0.5),
                    animationDuration: Duration(milliseconds: 3000),
                    dotSize: 7.0,
                    dotIncreaseSize: 1.1,
                    dotIncreasedColor: Color(0xff00CED1),
                    dotBgColor: Colors.white,
                    dotPosition: DotPosition.bottomCenter,
                    dotVerticalPadding: 0.0,
                    showIndicator: false,
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
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width * 0.8,
                child: GridView(
                  scrollDirection: Axis.vertical,
                  padding: const EdgeInsets.all(10),
                  children: servicesList.map((catData) {
                    return Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13)),
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
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13)),
                          elevation: 6,
                          margin: EdgeInsets.all(0),
                          child: Column(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(top: 12),
                                width: 40,
                                height: 40,
                                child: imageList[catData.index],
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    top: 15, left: 10, right: 10, bottom: 10),
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
                    maxCrossAxisExtent: 160,
                    childAspectRatio: 1,
                    crossAxisSpacing: 30,
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
