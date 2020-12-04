import 'package:flutter/material.dart';
import 'package:flutter_app11/screens/home_tabs/popular.dart';
import 'package:flutter_app11/screens/home_tabs/whats_new.dart';
import 'package:flutter_app11/screens/shared_ui/NavigationDrawer.dart';
import 'favourites.dart';

class HeadlineNews extends StatefulWidget {
  @override
  _HeadlineNewsState createState() => _HeadlineNewsState();
}

class _HeadlineNewsState extends State<HeadlineNews> with SingleTickerProviderStateMixin {
  TabController _tabcontroler;
  @override
  void initState() {
    super.initState();
    _tabcontroler = TabController(initialIndex: 0 ,length:3, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Headline News'),
        centerTitle: false,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search),onPressed: (){},),
          IconButton(icon: Icon(Icons.more_vert),onPressed: (){},),
        ],
        bottom: TabBar(
          indicatorColor: Colors.white,
          tabs: [
            Tab(
              text: "WHAT'S NEW" ,
            ),
            Tab(
              text: "POPULAR" ,
            ),
            Tab(
              text: "FAVOURITES" ,
            ),

          ],

          controller: _tabcontroler,
        ),
      ),
      drawer: navigationdrawer(),
      body: Center(
        child: TabBarView(children: [
          favourites(),
          popular(),
          favourites(),
        ],
          controller: _tabcontroler,),
      ),
    );

  }
}


