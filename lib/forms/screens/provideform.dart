import 'package:flutter/material.dart';
import '../widgets/notdropd.dart';

class ProvideForm extends StatefulWidget {
  @override
  _ProvideFormState createState() => _ProvideFormState();
}

class _ProvideFormState extends State<ProvideForm> {
  bool vari1 = false,
      vari2 = false,
      vari3 = false,
      vari4 = false,
      vari5 = false;
  var selectedUser,
      selectedUser2,
      selectedUser3,
      selectedUser4,
      selectedUser5,
      selectedUser6,
      selectedUser7;
  var _resource = [
    "Workers",
    "Finance Provider",
    "Warehouse/Space",
    "Service Provider"
  ];
  var _whatdoyoudo = [
    "Manufacturing",
    "Trading",
    "Distribution",
    "Service Provider",
    "Financier"
  ];
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
  var _natureoffacility = ["Secured(Working Capital, Term Loan)", "Unsecured"];
  var _natureofworkers = ["Skilled", "Unskilled", "Others"];
  var _functions = [
    "Acounts & Finance",
    "Technical",
    "Marketing",
    "Sales",
    "SCM",
    "Legal",
    "Customer Care",
    "Others"
  ];
  var _natureofservice = [
    "Transporter",
    "Loading/Unloading Operator",
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
                      'What do you do',
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
                    items: _whatdoyoudo.map(
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
                NotDropDownField('Name of entity'),
                NotDropDownField('Office Address'),
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
                      'Resources Available',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          fontFamily: "Montserrat",
                          color: Colors.black),
                    ),
                    value: selectedUser3,
                    onChanged: (String value) {
                      setState(() {
                        if (value == "Workers") {
                          vari1 = true;
                          vari2 = false;
                          vari3 = false;
                          vari4 = false;
                          vari5 = false;
                        } else if (value == "Finance Provider") {
                          vari1 = false;
                          vari2 = true;
                          vari3 = false;
                          vari4 = false;
                          vari5 = false;
                        } else if (value == "Warehouse/Space") {
                          vari1 = false;
                          vari2 = false;
                          vari3 = true;
                          vari4 = false;
                          vari5 = false;
                        } else if (value == "Service Provider") {
                          vari1 = false;
                          vari2 = false;
                          vari3 = false;
                          vari4 = true;
                          vari5 = false;
                        } else {
                          vari1 = false;
                          vari2 = false;
                          vari3 = false;
                          vari4 = false;
                          vari5 = false;
                        }
                        selectedUser3 = value;
                      });
                    },
                    items: _resource.map(
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
                          ),
                        );
                      },
                    ).toList(),
                  ),
                ), //here.
                (vari1)
                    ? Column(
                        children: <Widget>[
                          NotDropDownField('Number of Workers'),
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
                                'Nature of Workers',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    fontFamily: "Montserrat",
                                    color: Colors.black),
                              ),
                              value: selectedUser4,
                              onChanged: (String value) {
                                setState(() {
                                  selectedUser4 = value;
                                });
                              },
                              items: _natureofworkers.map(
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
                                            child: Text(
                                              variable,
                                              style: TextStyle(
                                                  fontFamily: 'Montserrat',
                                                  color: Colors.black),
                                            ),
                                            height: 50,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ).toList(),
                            ),
                          ),
                          NotDropDownField('Required Address'),
                        ],
                      )
                    : Container(height: 0),
                (vari2)
                    ? Column(
                        children: <Widget>[
                          Container(
                            width: double.infinity,
                            child: Column(
                              children: <Widget>[
                                NotDropDownField('Range of Amount')
                              ],
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
                                'Nature of Facility',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    fontFamily: "Montserrat",
                                    color: Colors.black),
                              ),
                              value: selectedUser5,
                              onChanged: (String value) {
                                setState(() {
                                  selectedUser5 = value;
                                });
                              },
                              items: _natureoffacility.map(
                                (String variable) {
                                  return DropdownMenuItem<String>(
                                    value: variable,
                                    child: Container(
                                      child: SingleChildScrollView(
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              padding: EdgeInsets.all(3),
                                              margin:
                                                  EdgeInsets.only(bottom: 10),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              child: Text(
                                                variable,
                                                style: TextStyle(
                                                    fontFamily: 'Montserrat',
                                                    color: Colors.black),
                                              ),
                                              height: 50,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ).toList(),
                            ),
                          ),
                        ],
                      )
                    : Container(height: 0),
                (vari3)
                    ? Column(
                        children: <Widget>[
                          NotDropDownField('Address for Space'),
                          NotDropDownField('Space area in sq. Fts'),
                          NotDropDownField('Number of Floors'),
                        ],
                      )
                    : Container(height: 0),
                (vari4)
                    ? Column(
                        children: <Widget>[
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
                                'Nature of Service',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    fontFamily: "Montserrat",
                                    color: Colors.black),
                              ),
                              value: selectedUser7,
                              onChanged: (String value) {
                                setState(() {
                                  selectedUser7 = value;
                                });
                              },
                              items: _natureofservice.map(
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
                                            child: Text(
                                              variable,
                                              style: TextStyle(
                                                  fontFamily: 'Montserrat',
                                                  color: Colors.black),
                                            ),
                                            height: 50,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ).toList(),
                            ),
                          ),
                        ],
                      )
                    : Container(height: 0),
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
