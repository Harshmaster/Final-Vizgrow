import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class GeneralField extends StatelessWidget {
  final String label;
  final String hint;

  GeneralField({this.label = "none", this.hint});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 30,
        right: 30,
        top: 20,
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          margin: EdgeInsets.only(bottom: 10),
          child: Text(
            label,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40), color: Colors.amber),
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
                  hintText: hint),
            ),
          ),
        ),
      ]),
    );
  }
}
