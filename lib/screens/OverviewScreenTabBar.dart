import 'package:flutter/material.dart';
import 'package:vizgrow_consulting/screens/OverviewScreen.dart';
import 'Services/ServicesScreen.dart';

class OverallTabBar extends StatefulWidget {
  @override
  _OverallTabBarState createState() => _OverallTabBarState();
}

class _OverallTabBarState extends State<OverallTabBar>
    with SingleTickerProviderStateMixin {
      
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: AppBar(
          actions: <Widget>[
            Container(
              margin: EdgeInsets.only(
                right: 10,
                top: 10,
              ),
              child: Icon(
                Icons.person,
                color: Color(0xfff4d35e),
                size: 30,
              ),
            )
          ],
          elevation: 7,
          backgroundColor: Color(0xff183883),
          automaticallyImplyLeading: false,
          bottom: TabBar(
            labelPadding: EdgeInsets.only(right: 12, bottom: 0, left: 7),
            indicator: UnderlineTabIndicator(
                borderSide: BorderSide(
              color: Color(0xfff4d35e),
              width: 5,
            )),
            indicatorWeight: 7,
            isScrollable: true,
            tabs: [
              Tab(
                child: Text(
                  'Overview',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 18),
                ),
              ),
              Tab(
                child: Text(
                  'Services',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 18),
                ),
              ),
              Tab(
                child: Text(
                  'Consulting Partner',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 18),
                ),
              ),
              Tab(
                child: Text(
                  'Careers',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 18),
                ),
              ),
              Tab(
                child: Text(
                  'Contact Us',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 18),
                ),
              ),
            ],
            controller: _tabController,
            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,
          ),
          bottomOpacity: 1,
        ),
      ),
      body: Container(
        width: double.infinity,
        child: TabBarView(
          children: [
            Overview(),
            Services(),
            Text(
              "docId: widget.docId",
            ),
            Text(
              "docId: widget.docId",
            ),
            Text(
              "docId: widget.docId",
            ),
          ],
          controller: _tabController,
        ),
      ),
    );
  }
}
