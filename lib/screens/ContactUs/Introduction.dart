import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ContactIntroduction extends StatefulWidget {
  @override
  _ContactIntroductionState createState() => _ContactIntroductionState();
}

class _ContactIntroductionState extends State<ContactIntroduction> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    
    target: LatLng(28.696513, 77.115682), 
    zoom: 15,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Container(
            child: Image.asset('assets/images/contactus.PNG'),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width * 0.299,
          ),
          Center(
            child: Card(
              elevation: 5,
              child: Container(
                margin: EdgeInsets.all(15),
                width: MediaQuery.of(context).size.width * 0.8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'vizGrow',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Libre',
                        fontWeight: FontWeight.w900,
                        fontSize: 38,
                      ),
                    ),
                    Text(
                      'A VC Consulting Group',
                      style: TextStyle(fontFamily: 'Montserrat', fontSize: 14),
                    ),
                    Container(
                      color: Colors.grey,
                      height: 1,
                      width: double.infinity,
                      margin: EdgeInsets.only(top: 10),
                    ),
                    Container(
                      color: Colors.white,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Center(
                            child: Container(
                              width: 25,
                              height: 25,
                              margin: EdgeInsets.all(20),
                              child: Image.asset(
                                  'assets/ContactIcons/telephone.png'),
                            ),
                          ),
                          Center(
                            child: Text(
                              '+91 8802999007',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 12,
                                  color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.grey,
                      height: 1,
                      width: double.infinity,
                      margin: EdgeInsets.only(top: 10),
                    ),
                    Container(
                      color: Colors.white,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Center(
                            child: Container(
                              width: 25,
                              height: 25,
                              margin: EdgeInsets.all(20),
                              child: Image.asset(
                                  'assets/ContactIcons/website.png'),
                            ),
                          ),
                          Center(
                            child: Text(
                              'Web site Address',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 12,
                                  color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.grey,
                      height: 1,
                      width: double.infinity,
                      margin: EdgeInsets.only(top: 10),
                    ),
                    Container(
                      color: Colors.white,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Center(
                            child: Container(
                              width: 25,
                              height: 25,
                              margin: EdgeInsets.all(20),
                              child:
                                  Image.asset('assets/ContactIcons/mail.png'),
                            ),
                          ),
                          Center(
                            child: Text(
                              'contact@vizgrow.com',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 12,
                                  color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 200,
                      child: GoogleMap(
                        mapToolbarEnabled: true,
                        myLocationEnabled: true,
                        markers: {
                          Marker(position: LatLng(28.696513, 77.115682),markerId: MarkerId('harsh'))
                        },
                        mapType: MapType.normal,
                        initialCameraPosition: _kGooglePlex,
                        onMapCreated: (GoogleMapController controller) {
                          _controller.complete(controller);
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
