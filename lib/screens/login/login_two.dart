import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:vizgrow_consulting/screens/login/login_two.dart';

class LoginPageSecondary extends StatefulWidget {
  @override
  _LoginPageSecondaryState createState() => _LoginPageSecondaryState();
}

class _LoginPageSecondaryState extends State<LoginPageSecondary> {
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
              'Sign in to vizGrow',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 32,
                  color: Colors.black,
                  fontWeight: FontWeight.w900),
            ),
          ),
          Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.23),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              margin: EdgeInsets.only(right: 22, left: 22, top: 6, bottom: 0),
              child: Container(
                child: InkWell(
                  child: Container(
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5)),
                            margin: EdgeInsets.only(right: 20),
                            child: Image.asset('assets/images/google_logo.png'),
                            height: MediaQuery.of(context).size.width * 0.12,
                            width: MediaQuery.of(context).size.width * 0.12,
                          ),
                          Text(
                            'Sign in with Google',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                        colors: [Color(0xff00CED1), Colors.blueGrey[500]],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.width * 0.14,
                  ),
                  onTap: () {},
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              margin: EdgeInsets.only(right: 22, left: 22, top: 6, bottom: 0),
              child: Container(
                child: InkWell(
                  child: Container(
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(7)),
                            margin: EdgeInsets.only(right: 20),
                            child: Image.asset('assets/images/facebook.png'),
                            height: MediaQuery.of(context).size.width * 0.12,
                            width: MediaQuery.of(context).size.width * 0.12,
                          ),
                          Text(
                            'Sign in with Facebook',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                        colors: [Color(0xff00CED1), Colors.blueGrey[500]],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.width * 0.14,
                  ),
                  onTap: () {},
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
