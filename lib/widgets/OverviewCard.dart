import 'package:flutter/material.dart';

class OverviewCard extends StatelessWidget {
  final String description;
  final String imgLink;
  final String tagLine;
  OverviewCard({this.description, this.imgLink, this.tagLine});

  @override
  Widget build(BuildContext context) {
    return Card(
      // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 5,
      margin: EdgeInsets.only(left: 0, right: 0, top: 10, bottom: 10),
      child: Container( 
        padding: EdgeInsets.all(7),
        margin: EdgeInsets.only(
          left: 10,
          right: 10,
          top: 0,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          // border: Border.all(width: 2),
          color: Colors.white,
        ),
        width: MediaQuery.of(context).size.width,
        // height: MediaQuery.of(context).size.width + 10,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(imgLink),
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 10,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Text(tagLine,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 21,
                        )),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(
                top:19,
                left: 10,
                right: 10,
                bottom: 20,
              ),
              child: Text(
                description,
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontFamily: 'Montserrat',
                    ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
