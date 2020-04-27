import 'package:flutter/material.dart';
import 'package:vizgrow_consulting/screens/Services/Covid-19-solutions/InNeed.dart';

class CovidIntroduction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                child: ClipRRect(
                  child: Image.asset(
                    "assets/images/nurturing.PNG",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                width: double.infinity,
                child: Text(
                  'Covid-19 Solution',
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                child: Text(
                    'Catastrophic disruption has occurred to businesses due to pan India lockdown on account of COVID-19. As a responsible corporate citizen, we have geared our organisation to support industry and businesses to save and protect them and making them sustain and grow with new challenges resulting from the pandemic.'),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Text(
                    'Let us know what you need to bring life and speed to your business i.e. Man, material, services, finance or support.'),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                // width: MediaQuery.of(context).size.width*0.5,
                child: RaisedButton(
                    color: Colors.white,
                    child: Text(
                      'I am in Need',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(width: 2, color: Colors.blue)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => InNeed()));
                    }),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Text(
                    'Let us know what you need to bring life and speed to your business i.e. Man, material, services, finance or support.'),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                // width: MediaQuery.of(context).size.width*0.5,
                child: RaisedButton(
                  color: Colors.white,
                  child: Text(
                    'I can Provide',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: BorderSide(width: 2, color: Colors.blue)),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
