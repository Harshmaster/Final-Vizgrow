import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:vizgrow_consulting/screens/login/login_two.dart';

class LoginPagePrimary extends StatefulWidget {
  @override
  _LoginPagePrimaryState createState() => _LoginPagePrimaryState();
}

class _LoginPagePrimaryState extends State<LoginPagePrimary> {
  var selectedItem;
  var items = {''};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 20, top: 30),
            child: Text(
              'vizGrow',
              style: TextStyle(
                fontFamily: 'Libre',
                fontSize: 26,
                color: Color(0xff00CED1),
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, top: 35),
            child: Text(
              'Let\'s get you started,',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 32,
                  color: Colors.black,
                  fontWeight: FontWeight.w900),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                left: 20, top: MediaQuery.of(context).size.height * 0.23),
            child: Text(
              'Enter your mobile number to continue',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Montserrat',
                fontSize: 14,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, top: 10),
            child: Row(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * 0.23,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[200]),
                  margin: EdgeInsets.only(
                    top: 20,
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
                    hint: Center(
                      child: Text(
                        'IND (+91)',
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                    value: selectedItem,
                    onChanged: (String value) {
                      setState(() {
                        selectedItem = value;
                      });
                    },
                    items: items.map(
                      (String variable) {
                        return DropdownMenuItem<String>(
                            value: variable, child: Text(variable));
                      },
                    ).toList(),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.60,
                  margin: EdgeInsets.only(top: 20, left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.white),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: TextField(
                            cursorColor: Colors.black,
                            cursorWidth: 1,
                            dragStartBehavior: DragStartBehavior.start,
                            decoration: InputDecoration(
                                fillColor: Colors.grey[100],
                                filled: true,
                                labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                alignLabelWithHint: true,
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 17,
                                ),
                                hintText: ""),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            margin: EdgeInsets.only(right: 22, left: 22, top: 6, bottom: 0),
            child: Container(
              margin:EdgeInsets.only(top:20),
              child: InkWell(
                child: Container(
                  child: Center(
                    child: Text(
                      'Continue',
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
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            LoginPageSecondary()),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
