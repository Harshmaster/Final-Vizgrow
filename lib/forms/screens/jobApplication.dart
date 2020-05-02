import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vizgrow_consulting/forms/widgets/Dropdown.dart';
import 'package:vizgrow_consulting/forms/widgets/generalField.dart';
import 'package:intl/intl.dart';


class JobApplication extends StatefulWidget {
  @override
  _JobApplicationState createState() => _JobApplicationState();
}

class _JobApplicationState extends State<JobApplication> {
  String selectedCountry;
  bool isEmployed = false;
  int skillCount = 0;
  List<int> skillList = [];
  String _fromDate;
  String _toDate;

  setCountry(value) {
    setState(() {
      selectedCountry = value;
    });
  }

  Future<Null> _selectFromDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2010),
      lastDate: DateTime(2030),
    );

    if (picked != null) {
      print('Date Selected: ${picked.toIso8601String()}');
      setState(() {
        var fromDate = picked;
        var format = DateFormat.yMd();
        var dateString = format.format(fromDate);
        _fromDate = dateString;
      });
    }
  }

  Future<Null> _selectToDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2010),
      lastDate: DateTime(2030),
    );

    if (picked != null) {
      print('Date Selected: ${picked.toIso8601String()}');
      setState(() {
        var toDate = picked;
        var format = DateFormat.yMd();
        var dateString = format.format(toDate);
        _toDate = dateString;
      });
    }
  }

  Widget addSkill() {
    return Container(
      width: MediaQuery.of(context).size.width / 2,
      child: GeneralField(
        hint: "eg.sales",
        label: "",
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'VizGrow',
          style: TextStyle(
            fontSize: 25,
            fontFamily: 'Montserrat',
            color: Color(0xff00CED1),
            fontWeight: FontWeight.w900,
          ),
        ),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 10),
            child: InkWell(
              child: Icon(
                Icons.person,
                color: Colors.black,
                size: 30,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GeneralField(
              hint: "Enter name",
              label: "Name",
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    child: GeneralField(
                      type: TextInputType.number,
                      hint: "Enter age",
                      label: "Age",
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    child: Dropdown(
                      hint: "Select Gender",
                      itemList: ["Male", "Female"],
                      leftMargin: MediaQuery.of(context).size.width / 20,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GeneralField(
              type: TextInputType.number,
              hint: "Experience in years",
              label: "Total Experience",
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    child: Dropdown(
                      hint: 'Currency',
                      itemList: ["Indian Rupees", "US Dollars"],
                      leftMargin: 20,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    child: GeneralField(
                      type: TextInputType.number,
                      hint: "Enter Salary",
                      label: "Annual Salary",
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 20, left: 20),
              child: Row(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Current',
                        style:
                            TextStyle(fontSize: 15, fontFamily: "Montserrat"),
                      ),
                      Text(
                        'Location',
                        style:
                            TextStyle(fontSize: 15, fontFamily: "Montserrat"),
                      ),
                    ],
                  ),
                  Expanded(
                    child: SizedBox(
                      width: 0,
                    ),
                  ),
                  Radio(
                    value: "India",
                    groupValue: selectedCountry,
                    activeColor: Colors.blue,
                    onChanged: (val) {
                      setCountry(val);
                      print(val);
                    },
                  ),
                  Text('India',
                      style: TextStyle(fontSize: 14, fontFamily: "Montserrat")),
                  Expanded(
                    child: SizedBox(
                      width: 0,
                    ),
                  ),
                  Radio(
                    value: "Outside India",
                    groupValue: selectedCountry,
                    activeColor: Colors.blue,
                    onChanged: (val) {
                      setCountry(val);
                      print(val);
                    },
                  ),
                  Text('Outside India',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: "Montserrat",
                      )),
                  Expanded(
                    child: SizedBox(
                      width: 0,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: GeneralField(
                type: TextInputType.number,
                hint: "+91 9871511555",
                label: "Mobile Number ",
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: GeneralField(
                type: TextInputType.number,
                hint: "011 48279362",
                label: "Telephone Number",
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: GeneralField(
                hint: "abc@gmail.com",
                label: "Email Address",
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    child: GeneralField(
                      hint: "XYZ",
                      label: "Company",
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      width: 0,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 15, right: 10, top: 15),
                    child: Text('Present', style: TextStyle(fontSize: 18)),
                  ),
                  Container(
                      child: Switch(
                    dragStartBehavior: DragStartBehavior.start,
                    value: isEmployed,
                    onChanged: (bool state) {
                      setState(() {
                        isEmployed = state;
                      });
                    },
                  )),
                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width / 1.8,
                  child: GeneralField(
                    hint: "name",
                    label: "Name of Employer",
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    width: 0,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2.4,
                  child: GeneralField(
                    hint: "eg.delhi",
                    label: "Location",
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  child: GeneralField(
                    type: TextInputType.number,
                    hint: "in days",
                    label: "Joining Time",
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  child: GeneralField(
                    hint: "eg.Manager",
                    label: "Designation",
                  ),
                ),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: GeneralField(
                maxLength: 1000,
                maxLines: 3,
                hint: "enter job Profile",
                label: "Job Profile",
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2,
                    child: GeneralField(
                      hint: "eg.sales",
                      label: "Key Skills",
                    ),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(),
                    child: IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () {
                        setState(() {
                          skillCount++;

                          skillList.add(skillCount);
                        });
                      },
                    )),
              ],
            ),
            Wrap(
              spacing: 0,
              runSpacing: 0,
              children: skillList.map((variable) {
                return addSkill();
              }).toList(),
            ),
            Row(
              children: <Widget>[
                InkWell(
                  onTap: () {
                    _selectFromDate(context);
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2,
                    child: GeneralField(
                      isEnabled: false,
                      hint: _fromDate == null ? "eg.January" : _fromDate,
                      label: "From",
                    ),
                  ),
                ),
                InkWell(
                  onTap: () async {
                    _selectToDate(context);
                    
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2,
                    child: GeneralField(
                      isEnabled: false,
                      hint: _toDate == null ? "eg.April" : _toDate,
                      label: "To",
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}
