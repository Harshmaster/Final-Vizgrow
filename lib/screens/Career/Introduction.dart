import 'package:flutter/material.dart';
import 'package:vizgrow_consulting/forms/widgets/Dropdown.dart';
import 'package:vizgrow_consulting/forms/widgets/generalField.dart';

class CareerIntroduction extends StatefulWidget {
  @override
  _CareerIntroductionState createState() => _CareerIntroductionState();
}

class _CareerIntroductionState extends State<CareerIntroduction> {
  var _gender = ['Male', 'Female', 'Others'];
  String selectedItem;
  List<String> itemList = [
    'Intern',
    'Professional',
    'Skilled Resource',
    'Delivery Expert'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width * 0.648,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/consultpage.PNG'),
              ),
            ),
            child: Center(
              child: Text(
                'Freedom to work and Grow in team spirit',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  color: Colors.white,
                  fontSize: 25,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Center(
              child: Text('Join our Team of Consulting Partners',
                  style: TextStyle(
                      color: Colors.black87,
                      fontFamily: 'Montserrat',
                      fontSize: 16),
                  textAlign: TextAlign.center),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(children: <Widget>[
                Center(
                  child: GeneralField(
                    hint: 'Enter Name',
                    label: 'Name',
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width / 2.2,
                      child: Center(
                        child: GeneralField(
                          type: TextInputType.number,
                          hint: 'Enter Age',
                          label: 'Age',
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 2.4,
                      child: Center(
                        child: Dropdown(
                          leftMargin: 30,
                          hint: 'Gender',
                          itemList: _gender,
                        ),
                      ),
                    ),
                  ],
                ),
                Center(
                  child: GeneralField(
                    maxLines: 3,
                    label: 'Address',
                    hint: 'Enter Address',
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[200]),
                  margin: EdgeInsets.only(
                    left: 30,
                    right: 30,
                    top: 30,
                  ),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    icon: Icon(Icons.arrow_drop_down),
                    iconSize: 30,
                    underline: Container(
                      color: Colors.black,
                      width: 3,
                    ),
                    style: TextStyle(
                        color: Color.fromRGBO(82, 90, 101, 1),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                    hint: Text('Select Ocuupation'),
                    value: selectedItem,
                    onChanged: (String value) {
                      setState(() {
                        selectedItem = value;
                      });
                    },
                    items: itemList.map(
                      (String variable) {
                        return DropdownMenuItem<String>(
                            value: variable, child: Text(variable));
                      },
                    ).toList(),
                  ),
                ),
                selectedItem == "Intern"
                    ? Container(
                        child: Column(
                          children: <Widget>[
                            Center(
                              child: GeneralField(
                                hint: 'eg.IIT',
                                label: 'Name of Institute',
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 2.4,
                                  child: Center(
                                    child: GeneralField(
                                      hint: 'eg.2nd',
                                      label: 'Semester',
                                    ),
                                  ),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 2.2,
                                  child: Center(
                                    child: GeneralField(
                                      hint: 'eg.2023',
                                      label: 'Batch',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Center(
                              child: GeneralField(
                                hint: 'eg.Delhi', 
                                label: 'Address of Institute', 
                              ),
                            ),
                          ],
                        ),
                      )
                    : Container(),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  margin:
                      EdgeInsets.only(right: 22, left: 22, top: 6, bottom: 0),
                  child: Container(
                    margin: EdgeInsets.only(top: 20),
                    child: InkWell(
                      child: Container(
                        child: Center(
                          child: Text(
                            'Apply for Position',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 20,
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
                      onTap: () {},
                    ),
                  ),
                ),
              ]),
            ),
          )
        ],
      ),
    );
  }
}
