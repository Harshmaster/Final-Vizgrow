import 'package:flutter/material.dart';
import 'package:vizgrow_consulting/forms/screens/consultingPartnerForm.dart';

class PartnerIntroduction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 10),
                width: MediaQuery.of(context).size.width,
                child: Image.asset("assets/images/image32.PNG"),
              ),
              Container(
                height: 2.5,
                margin: EdgeInsets.only(bottom: 20, left: 30, right: 30),
                width: MediaQuery.of(context).size.width,
                color: Colors.blue,
              ),
              Container(
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width,
                child: Text(
                  'Consulting Partner is senior most position in our consulting. In addition to advising clients, you will be responsible for developing and managing client relationships, identifying new business opportunities, building and developing teams and contributing to growth and development.',
                  style: TextStyle(fontSize: 17, fontFamily: "Montserrat"),
                ),
              ),
              Container(
                margin:
                    EdgeInsets.only(right: 20, left: 20, top: 40, bottom: 40),
                child: InkWell(
                  child: Container(
                    child: Center(
                      child: Text(
                        'Apply Now',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 23,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.width * 0.14,
                    color: Colors.black,
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                ConsultingForm()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
