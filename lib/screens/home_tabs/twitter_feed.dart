import 'package:flutter/material.dart';
import 'package:flutter_app11/screens/shared_ui/NavigationDrawer.dart';

class TwitterFeed extends StatefulWidget {
  @override
  _TwitterFeedState createState() => _TwitterFeedState();
}

class _TwitterFeedState extends State<TwitterFeed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Twitter Feed'),
        centerTitle: false,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      drawer: navigationdrawer(),
      body: ListView.builder(
        itemBuilder: (context, position) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 8 ),
            child: Card(
              child: Column(
                children: <Widget>[
                  _Cardheader(),
                  _Cardbody(),
                  _Cardfooter(),
                ],
              ),
            ),
          );
        },
        itemCount: 20,
      ),
    );
  }

  Widget _Cardheader() {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16),
          child: CircleAvatar(
            backgroundImage:
                ExactAssetImage("assets/images/placeholder_bg.png"),
            radius: 25,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  "Christina Meyers",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  '@ch_meyers',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Fri, 12 May 2020 - 14:30 ',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        )
      ],
    );
  }
  Widget _Cardbody() {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text(
                'we also talk about the future of work as the robots advance, '
                'and we ask whether a retro phones',style: TextStyle
              (
              fontSize: 16,
              height: 1.2,
            ),),
          ),
        ],
      ),
    );
  }
  Widget _Cardfooter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.repeat,
                color: Colors.deepOrange,
                size: 28,
              ),
              onPressed: () {},
            ),
            Text(
              '25',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            FlatButton(
              onPressed: () {},
              child: Text(
                'SHARE',
                style: TextStyle(color: Colors.deepOrange),
              ),
            ),
            FlatButton(
              onPressed: () {},
              child: Text(
                'OPEN',
                style: TextStyle(color: Colors.deepOrange),
              ),
            ),
          ],
        ),
      ],
    );
  }
}


