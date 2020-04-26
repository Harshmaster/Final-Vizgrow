import 'package:flutter/material.dart';

class GeneralCard extends StatelessWidget {
  final String description;
  final String imgLink;
  final String tagLine;
  final bool isLeft;
  GeneralCard({this.description, this.imgLink, this.tagLine, this.isLeft});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 10),
      decoration: BoxDecoration(
        // borderRadius: BorderRadius.circular(10),

        color: Colors.white,
      ),
      width: MediaQuery.of(context).size.width,
      // height: MediaQuery.of(context).size.width + 10,
      child: Column(
        children: [
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(imgLink),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            width: double.infinity,
            child: Text(
              tagLine,
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: <Widget>[
                isLeft == true
                    ? Container(
                        color: Colors.blue,
                        width: 7,
                        height: 100,
                      )
                    : Container(),
                Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width - 60,
                  margin: EdgeInsets.only(
                    left: 10,
                    right: 10,
                    bottom: 10,
                  ),
                  child: Text(
                    description,
                    style: TextStyle(
                        color: Colors.brown,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                isLeft == false
                    ? Container(
                        color: Colors.blue,
                        width: 7,
                        height: 100,
                      )
                    : Container(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
