import 'package:flutter/material.dart';
import '../widgets/notdropd.dart';

class RecruiterForm extends StatefulWidget {
  @override
  _RecruiterFormState createState() => _RecruiterFormState();
}

class _RecruiterFormState extends State<RecruiterForm> {
  var selectedUser, selectedUser2;
  var _businessnature = ["Manufacturing", "Service", "Trading","NGO","Diversified"];
  var _entitynature = [
    "Proprietor",
    "Partnership",
    "LLP",
    "Pvt. Ltd.",
    "Public Ltd.",
    "Society",
    "Trust",
    "Others"
  ];

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
                    onTap: () {},
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
                NotDropDownField('Name of Organization'),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.only(left: 14),
                  child: DropdownButton<String>(
                    itemHeight: 60,
                    isExpanded: true,
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black,
                    ),
                    iconSize: 30,
                    underline: Container(
                      color: Colors.white,
                    ),
                    style: TextStyle(
                        color: Color.fromRGBO(82, 90, 101, 1),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                    hint: Text(
                      'Nature of entity',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          fontFamily: "Montserrat",
                          color: Colors.black),
                    ),
                    value: selectedUser2,
                    onChanged: (String value) {
                      setState(() {
                        selectedUser2 = value;
                      });
                    },
                    items: _entitynature.map(
                      (String variable) {
                        return DropdownMenuItem<String>(
                          value: variable,
                          child: Container(
                            child: Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(3),
                                  margin: EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                    child: Text(
                                      variable,
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          color: Colors.black),
                                    ),
                                  ),
                                  height: 50,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),  
                          )
                        );
                      },
                    ).toList(),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.only(left: 14),
                  child: DropdownButton<String>(
                    itemHeight: 60,
                    isExpanded: true,
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black,
                    ),
                    iconSize: 30,
                    underline: Container(
                      color: Colors.white,
                    ),
                    style: TextStyle(
                        color: Color.fromRGBO(82, 90, 101, 1),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                    hint: Text(
                      'Nature Of Business',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          fontFamily: "Montserrat",
                          color: Colors.black),
                    ),
                    value: selectedUser,
                    onChanged: (String value) {
                      setState(() {
                        selectedUser = value;
                      });
                    },
                    items: _businessnature.map(
                      (String variable) {
                        return DropdownMenuItem<String>(
                            value: variable,
                            child: Container(
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.all(3),
                                    margin: EdgeInsets.only(bottom: 10),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Center(
                                      child: Text(
                                        variable,
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            color: Colors.black),
                                      ),
                                    ),
                                    height: 50,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                ],
                              ),
                            ));
                      },
                    ).toList(),
                  ),
                ),
                NotDropDownField('Address'),
                NotDropDownField('Turnover'),
                NotDropDownField('Location'),
                NotDropDownField('Number of Employees'),
                NotDropDownField('User Id'),
                NotDropDownField('Password'),
                NotDropDownField('Confirm Password'),
                NotDropDownField('Designation'),
                NotDropDownField('Experience Desired(in years)'),
                NotDropDownField('CTC Level(in Lacs)'),
                NotDropDownField('Contact'),
                NotDropDownField('Mobile Number'),
                NotDropDownField('Email Id'),
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
