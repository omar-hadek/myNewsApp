import 'package:flutter/material.dart';
import 'package:flutter_app11/screens/shared_ui/NavigationDrawer.dart';

class InstagramFeeds extends StatefulWidget {
  @override
  _InstagramFeedsState createState() => _InstagramFeedsState();
}

class _InstagramFeedsState extends State<InstagramFeeds> {
  TextStyle _hashtagColor() {
    return TextStyle(
      color: Colors.deepOrange,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Instagram Feeds'),
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
            padding: const EdgeInsets.only(bottom: 8),
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _Drawheader(),
                  _Drawtitile(),
                  _hashtags(),
                  _Drawbody(),
                  _Drawfooter(),

                ],
              ),
            ),
          );
        },
        itemCount: 20,
      ),
    );

  }

  Widget _Drawheader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
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
            ),
          ],
        ),
        Row(
          children: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.favorite,
                  color: Colors.grey,
                ),
                onPressed: () {}),
            Transform.translate(
                offset: Offset(-10, 0),
                child: Text(
                  '25',
                  style: TextStyle(
                    color: Colors.grey.shade400,
                  ),
                )),
          ],
        ),
      ],
    );
  }

  Widget _Drawtitile() {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
      child: Text(
        'we also talk about the future of work as the robots ',
        style: TextStyle(
          fontSize: 14,
          height: 1.2,
        ),
      ),
    );
  }

  Widget _hashtags() {
    return Container(
      child: Wrap(
        children: <Widget>[
          FlatButton(
            onPressed: () {},
            child: Text(
              '#advance',
              style: _hashtagColor(),
            ),
          ),
          FlatButton(
            onPressed: () {},
            child: Text(
              '#advance',
              style: _hashtagColor(),
            ),
          ),
          FlatButton(
            onPressed: () {},
            child: Text(
              '#advance',
              style: _hashtagColor(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _Drawbody() {
    return SizedBox(
      width:double.infinity,
      height: MediaQuery.of(context).size.height*0.34,
        child : Image(
    image: ExactAssetImage('assets/images/placeholder_bg.png'),
    fit: BoxFit.cover,)
    );
  }

  Widget _Drawfooter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[

            Transform.translate(
              offset: Offset(5, 0),
              child: Text(
                '10 COMMENTS',
                style: TextStyle(
                  color: Colors.deepOrange,
                ),
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
