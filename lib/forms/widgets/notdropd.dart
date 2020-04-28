import 'package:flutter/material.dart';

class NotDropDownField extends StatefulWidget {
  final String textValue;
  NotDropDownField(this.textValue);
  @override
  _NotDropDownFieldState createState() => _NotDropDownFieldState();
}

class _NotDropDownFieldState extends State<NotDropDownField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      margin: EdgeInsets.all(20),
      child: TextField(
        style: TextStyle(
          fontFamily: 'Montserrat',
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
        decoration: InputDecoration(
          labelText: widget.textValue,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xff00CED1),
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
