import 'package:flutter/material.dart';

class Dropdown extends StatefulWidget {
  final List<String> itemList;
  final String hint;

  Dropdown({this.itemList, this.hint});

  @override
  _DropdownState createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  String selectedItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left:10),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey[200]),
      margin: EdgeInsets.only(
        left: 30,
        right: 30,
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
        hint: Text(widget.hint),
        value: selectedItem,
        onChanged: (String value) {
          setState(() {
            selectedItem = value;
          });
        },
        items: widget.itemList.map(
          (String variable) {
            return DropdownMenuItem<String>(
                value: variable, child: Text(variable));
          },
        ).toList(),
      ),
    );
  }
}
