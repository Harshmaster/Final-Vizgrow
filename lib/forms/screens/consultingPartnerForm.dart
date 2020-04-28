import 'package:flutter/material.dart';
import '../widgets/notdropd.dart';

class ConsultingForm extends StatefulWidget {
  @override
  _ConsultingFormState createState() => _ConsultingFormState();
}

class _ConsultingFormState extends State<ConsultingForm> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                  Text(
                    'VizGrow',
                    style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'Montserrat',
                        color: Color(0xff00CED1),
                        fontWeight: FontWeight.w900),
                  ),
                  InkWell(
                    child: Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            color: Colors.black,
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                NotDropDownField('Name'),
                NotDropDownField('Age'),
                NotDropDownField('Address'),
                NotDropDownField('Qualification'),
                NotDropDownField('Domain Interested'),
                NotDropDownField('Joining Time(in days)'),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 20, left: 20, top: 40, bottom: 40),
            child: InkWell(
              child: Container(
                child: Center(
                  child: Text(
                    'Submit',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 23,
                      color: Colors.white,
                    ),
                  ),
                ),
                width: MediaQuery.of(context).size.width,
                height: 65,
                color: Colors.black,
              ),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
