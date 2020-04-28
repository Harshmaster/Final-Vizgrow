// import 'package:flutter/material.dart';

// class OverviewPage extends StatefulWidget {
//   @override
//   _OverviewPageState createState() => _OverviewPageState();
// }

// class _OverviewPageState extends State<OverviewPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView(
//         children: <Widget>[
//           Container(
//             padding: EdgeInsets.all(20),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: <Widget>[
//                 Text(
//                   'VizGrow',
//                   style: TextStyle(
//                       fontSize: 25,
//                       fontFamily: 'Montserrat',
//                       color: Color(0xff00CED1),
//                       fontWeight: FontWeight.w900),
//                 ),
//                 InkWell(
//                   child: Icon(
//                     Icons.person,
//                     color: Colors.black,
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
//         items: <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: InkWell(
//               child: Icon(Icons.home),
//               onTap: () {},
//             ),
//             title: Text(
//               "Overview",
//               style:
//                   TextStyle(fontFamily: 'Roboto', fontWeight: FontWeight.w600),
//             ),
//           ),
//           BottomNavigationBarItem(
//             icon: InkWell(
//               child: Icon(Icons.build),
//               onTap: () {},
//             ),
//             title: Text(
//               "Services",
//               style:
//                   TextStyle(fontFamily: 'Roboto', fontWeight: FontWeight.w500),
//             ),
//           ),
//           BottomNavigationBarItem(
//             icon: InkWell(
//               child: Icon(Icons.people),
//               onTap: () {},
//             ),
//             title: Text(
//               "Consultancy Partner",
//               style:
//                   TextStyle(fontFamily: 'Roboto', fontWeight: FontWeight.w600),
//             ),
//           ),
//           BottomNavigationBarItem(
//             icon: InkWell(
//               child: Icon(Icons.work),
//               onTap: () {},
//             ),
//             title: Text(
//               "Career",
//               style:
//                   TextStyle(fontFamily: 'Roboto', fontWeight: FontWeight.w600),
//             ),
//           ),
//           BottomNavigationBarItem(
//             icon: InkWell(
//               child: Icon(Icons.contact_phone),
//               onTap: () {},
//             ),
//             title: Text(
//               "Contact Us",
//               style:
//                   TextStyle(fontFamily: 'Roboto', fontWeight: FontWeight.w600),
//             ),
//           ),
//         ],
//         selectedItemColor: Color(0xff00CED1),
//       ),
//     );
//   }
// }
