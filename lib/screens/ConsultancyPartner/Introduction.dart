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
              Card(
                elevation: 6,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13)),
                margin: EdgeInsets.all(10),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(13),
                    child: Image.asset(
                      "assets/images/image32.PNG",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(15),
                width: MediaQuery.of(context).size.width,
                child: Text(
                  'Consulting Partner is senior most position in our consulting. In addition to advising clients, you will be responsible for developing and managing client relationships, identifying new business opportunities, building and developing teams and contributing to growth and development.',
                  style: TextStyle(
                      fontSize: 17,
                      fontFamily: "Montserrat",
                      color: Colors.grey),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                margin:
                    EdgeInsets.only(right: 22, left: 22, top: 6, bottom: 20),
                elevation: 3,
                child: Container(
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
                                  ConsultingForm()));
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
