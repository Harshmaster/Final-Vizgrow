import 'package:flutter/material.dart';

class InNeed extends StatefulWidget {
  static const routeName = '/add-user2';

  @override
  _InNeedState createState() => _InNeedState();
}

class _InNeedState extends State<InNeed> {
  var selectedUser;
  final nameController = TextEditingController();
  final mobileController = TextEditingController();
  final salaryController = TextEditingController();
  final monthoffController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            title: Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 27,
                      child: Icon(
                        Icons.supervised_user_circle,
                        color: Colors.black,
                        size: 28,
                      ),
                    ),
                    SizedBox(
                        width: ((MediaQuery.of(context).size.width - 92) / 2) -
                            28),
                    Container(
                      width: 92,
                      child: Text(
                        'Add User',
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          // fontFamily: "ComicNeue-Light",
                          fontWeight: FontWeight.w900,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                )),
            elevation: 0,
            backgroundColor: Colors.grey[200],
            automaticallyImplyLeading: false),
        body: Container(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    // border: Border.all(),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                  padding: EdgeInsets.all(8),
                  width: double.infinity,
                  child: TextField(
                    style: TextStyle(
                        fontSize: 20,
                        // fontFamily: "ComicNeue-Light",
                        fontWeight: FontWeight.bold),
                    decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.person,
                        color: Colors.black,
                        size: 25,
                      ),

                      enabledBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.blueGrey,
                            width: 2,
                          )),
                      focusedBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 2,
                          )),
                      // filled: true,
                      // fillColor: Colors.amber,

                      labelStyle: TextStyle(
                        // fontFamily: "ComicNeue-Light",
                        fontSize: 24,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                      labelText: 'Name',
                    ),
                    controller: nameController,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    // border: Border.all(),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.only(top: 20, left: 10, right: 10),
                  padding: EdgeInsets.all(8),
                  width: double.infinity,
                  child: TextField(
                    style: TextStyle(
                        fontSize: 20,
                        // fontFamily: "ComicNeue-Light",
                        fontWeight: FontWeight.bold),
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.phone, color: Colors.black),
                      enabledBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.blueGrey,
                            width: 2,
                          )),
                      focusedBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 2,
                          )),
                      // filled: true,
                      // fillColor: Colors.amber,

                      labelStyle: TextStyle(
                        // fontFamily: "ComicNeue-Light",
                        fontSize: 24,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                      labelText: 'Mobile',
                    ),
                    keyboardType: TextInputType.number,
                    controller: mobileController,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    // border: Border.all(),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.only(top: 20, left: 10, right: 10),
                  padding: EdgeInsets.all(8),
                  width: double.infinity,
                  child: TextField(
                    style: TextStyle(
                        fontSize: 20,
                        // fontFamily: "ComicNeue-Light",
                        fontWeight: FontWeight.bold),
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.email, color: Colors.black),
                      enabledBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.blueGrey,
                            width: 2,
                          )),
                      focusedBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 2,
                          )),
                      // filled: true,
                      // fillColor: Colors.amber,

                      labelStyle: TextStyle(
                        // fontFamily: "ComicNeue-Light",
                        fontSize: 24,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                      labelText: 'Email',
                    ),
                    keyboardType: TextInputType.text,
                    controller: emailController,
                  ),
                ),

                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        // border: Border.all(),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      margin: EdgeInsets.only(top: 20, left: 10, right: 10),
                      padding: EdgeInsets.all(8),
                      width: MediaQuery.of(context).size.width / 2 - 20,
                      child: TextField(
                        style: TextStyle(
                            fontSize: 20,
                            // fontFamily: "ComicNeue-Light",
                            fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.monetization_on,
                            color: Colors.black,
                          ),
                          enabledBorder: UnderlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.blueGrey,
                                width: 2,
                              )),
                          focusedBorder: UnderlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 2,
                              )),
                          // filled: true,
                          // fillColor: Colors.amber,

                          labelStyle: TextStyle(
                            // fontFamily: "ComicNeue-Light",
                            fontSize: 24,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                          labelText: 'MTH OFF',
                        ),
                        keyboardType: TextInputType.number,
                        controller: salaryController,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        // border: Border.all(),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      margin: EdgeInsets.only(top: 20, left: 10, right: 10),
                      padding: EdgeInsets.all(8),
                      width: MediaQuery.of(context).size.width / 2 - 20,
                      child: TextField(
                        style: TextStyle(
                            fontSize: 20,
                            // fontFamily: "ComicNeue-Light",
                            fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.hotel,
                            color: Colors.black,
                          ),
                          enabledBorder: UnderlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.blueGrey,
                                width: 2,
                              )),
                          focusedBorder: UnderlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 2,
                              )),
                          labelStyle: TextStyle(
                            // fontFamily: "ComicNeue-Light",
                            fontSize: 24,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                          labelText: 'SALARY',
                        ),
                        keyboardType: TextInputType.text,
                        controller: monthoffController,
                      ),
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    // border: Border.all(),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.only(top: 20, left: 10, right: 10),
                  padding: EdgeInsets.all(8),
                  width: double.infinity,
                  child: TextField(
                    style: TextStyle(
                        fontSize: 20,
                        // fontFamily: "ComicNeue-Light",
                        fontWeight: FontWeight.bold),
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.email, color: Colors.black),
                      enabledBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.blueGrey,
                            width: 2,
                          )),
                      focusedBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 2,
                          )),
                      // filled: true,
                      // fillColor: Colors.amber,

                      labelStyle: TextStyle(
                        // fontFamily: "ComicNeue-Light",
                        fontSize: 24,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                      labelText: 'Password',
                    ),
                    keyboardType: TextInputType.text,
                    controller: passwordController,
                  ),
                ),
                // Multi(bTypeList:bTypeNames),
                Container(
                  margin: EdgeInsets.only(
                    bottom: 20,
                    right: 20,
                    left: 20,
                  ),
                  width: double.infinity,
                  height: 40,
                  child: RaisedButton(
                    padding: EdgeInsets.all(6),
                    color: Colors.black,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      'SAVE',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    onPressed: () {
                     
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
