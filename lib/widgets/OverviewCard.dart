import 'package:flutter/material.dart';

class OverviewCard extends StatelessWidget {
  final String description;
  final String imgLink;
  final String tagLine;
  OverviewCard({this.description, this.imgLink, this.tagLine});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 10,
        right: 10,
        top: 10,
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
          SizedBox(
            height: 8,
          ),
          Container(
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
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }
}
