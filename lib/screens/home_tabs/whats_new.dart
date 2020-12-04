import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app11/main.dart';

class whatsNew extends StatefulWidget {
  @override
  _whatsNewState createState() => _whatsNewState();
}

class _whatsNewState extends State<whatsNew> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _drawHolder(),
          _drawTopSories(),
        ],
      ),
    );
  }

  Widget _drawHolder() {
    TextStyle _headertitle = TextStyle(
      color: Colors.red,
      fontSize: 22,
      fontWeight: FontWeight.w600,
    );
    TextStyle _headerdes = TextStyle(
      color: Colors.red,
      fontSize: 18,
    );
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.25,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: ExactAssetImage("assets/images/placeholder_bg.png"),
              fit: BoxFit.cover)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 48, right: 48),
              child: Text(
                "How Terries & Royals Gatecrashed Final",
                style: _headertitle,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 34, right: 34),
              child: Text(
                "lorem ipsum color sit amel,consectetur adipiscing elit,sed do eisumad",
                style: _headerdes,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _drawTopSories() {
    return Container(
      color: Colors.grey.shade100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 16),
            child: _drawtitleStories("Top Stories"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Column(
                children: <Widget>[
                  _drawSingleRow(),
                  _drawDivider(),
                  _drawSingleRow(),
                  _drawDivider(),
                  _drawSingleRow(),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 8, top: 8, bottom: 8),
                  child: _drawtitleStories('Recent update'),
                ),
                _drawRecentUpdateCard(Colors.deepOrange),
                _drawRecentUpdateCard(Colors.green),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _drawtitleStories(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w400,
      ),
    );
  }

  Widget _drawSingleRow() {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: <Widget>[
          SizedBox(
            child: Image(
              image: ExactAssetImage("assets/images/placeholder_bg.png"),
              fit: BoxFit.cover,
            ),
            width: 125,
            height: 125,
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                Text(
                  "The World Global Warming Annual Summit ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(
                  height: 22,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Micheal adams'),
                    Row(
                      children: <Widget>[
                        Icon(Icons.timer),
                        Text('15 min'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _drawDivider() {
    return Container(
      color: Colors.grey.shade300,
      height: 1,
      width: double.infinity,
    );
  }

  Widget _drawRecentUpdateCard(Color color) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: ExactAssetImage('assets/images/placeholder_bg.png'),
                  fit: BoxFit.cover),
            ),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.25,
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 16, right: 16, bottom: 8, top: 8),
            child: Container(
              decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(4)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  'Sport',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 8),
            child: Container(
              child: Text(
                'Vittel is ferreri number one-Hamiton',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.timer,
                  color: Colors.grey,
                ),
                Text(
                  '15 min',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
