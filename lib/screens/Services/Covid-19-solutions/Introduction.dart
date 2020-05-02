import 'package:flutter/material.dart';
import 'package:vizgrow_consulting/forms/screens/needforms.dart';
import 'package:vizgrow_consulting/forms/screens/provideform.dart';
import 'package:vizgrow_consulting/screens/login/login_one.dart';

class CovidIntroduction extends StatelessWidget {
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
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => LoginPagePrimary()));
              },
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
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.all(0),
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                child: ClipRRect(
                  child: Image.asset(
                    "assets/images/covid.PNG",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                width: double.infinity,
                child: Text('Covid-19 Solution',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.only(top: 0),
                child: Text(
                    'Catastrophic disruption has occurred to businesses due to pan India lockdown on account of COVID-19. As a responsible corporate citizen, we have geared our organisation to support industry and businesses to save and protect them and making them sustain and grow with new challenges resulting from the pandemic.',
                    style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 17,
                        color: Colors.grey)),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  bottom: 20,
                ),
                margin: EdgeInsets.only(top: 0),
                child: Text(
                  'Let us know what you need to bring life and speed to your business i.e. Man, material, services, finance or support.',
                  style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 17,
                      color: Colors.grey),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.only(right: 22, left: 22, top: 6, bottom: 0),
                child: Container(
                  child: InkWell(
                    child: Container(
                      child: Center(
                        child: Text(
                          'I am in Need',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 23,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            colors: [Color(0xff00CED1), Colors.blueGrey[500]],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          )),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width * 0.14,
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => NeedForm()));
                    },
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.only(top: 0, bottom: 0),
                child: Text(
                    'Let us know what you need to bring life and speed to your business i.e. Man, material, services, finance or support.',
                    style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 17,
                        color: Colors.grey)),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                margin:
                    EdgeInsets.only(right: 22, left: 22, top: 6, bottom: 20),
                child: Container(
                  child: InkWell(
                    child: Container(
                        child: Center(
                          child: Text(
                            'I Can Provide',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 23,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.width * 0.14,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                              colors: [Color(0xff00CED1), Colors.blueGrey[500]],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ))),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  ProvideForm()));
                    },
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
