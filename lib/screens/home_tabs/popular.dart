import 'package:flutter/material.dart';
class popular extends StatefulWidget {
  @override
  _popularState createState() => _popularState();
}

class _popularState extends State<popular> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
        itemBuilder: (context , position ){
          return Card(
            child: _drawSingleRow(),
          );
         }
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
}
