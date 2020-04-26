import 'package:flutter/material.dart';

class ServicesCard extends StatelessWidget {
  final String imgLink;
  final String tagLine;
  final Widget navigator; 
  ServicesCard({this.imgLink, this.tagLine,this.navigator});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
       Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => navigator));
      },
          child: Container(
        margin: EdgeInsets.only(
          left: 10,
          right: 10,
          top: 10,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9),
          border: Border.all(width: 2),
          color: Colors.white,
        ),
        width: MediaQuery.of(context).size.width,
        // height: MediaQuery.of(context).size.width + 10,
        child: Column(
          children: [
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(0),
                child: Image.asset(imgLink),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top:20,bottom:20),
              width: MediaQuery.of(context).size.width * 0.6,
              child: Text(tagLine,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 19,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w600,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
