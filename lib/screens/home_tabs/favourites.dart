import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class favourites extends StatefulWidget {
  @override
  _favouritesState createState() => _favouritesState();
}

class _favouritesState extends State<favourites> {
  Random random = Random();
  List<Color> ColorList = [
    Colors.green,
    Colors.deepOrange,
    Colors.blue,
    Colors.amber,
    Colors.pink,
    Colors.brown
  ];

  Color _getColorRandom() {
    return ColorList[random.nextInt(ColorList.length)];
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              child: Column(
                children: <Widget>[
                  _authorRow(_getColorRandom()),
                  _newsItemRaw(),
                ],
              ),
            ),
          ),
        );
      },
      itemCount: 20,
    );
  }

  Widget _authorRow(Color color) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
             right: 6),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image:
                          ExactAssetImage("assets/images/placeholder_bg.png"),
                      fit: BoxFit.cover),
                  shape: BoxShape.circle,
                ),
                width: 50,
                height: 50,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Omar hadek',
                  style: TextStyle(fontSize: 15, color: Colors.grey.shade600),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: <Widget>[
                    Text(
                      '15 min.',
                      style: TextStyle(color: Colors.grey.shade500),
                    ),
                    Text(
                      "LifeStyle",
                      style: TextStyle(
                        color: color,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        IconButton(
          icon: Icon(Icons.bookmark_border),
          onPressed: () {},
          color: Colors.grey,
        ),
      ],
    );
  }

  Widget _newsItemRaw() {
    return Row(
      children: <Widget>[

        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: ExactAssetImage("assets/images/placeholder_bg.png"),
                fit: BoxFit.cover),
          ),
          width: 125,
          height: 125,
          margin: EdgeInsets.only(top: 16,right: 14),
        ),
        Expanded(
          child: Column(
            children: <Widget>[
              Text("Tech Tent: Old Phones and safe social",style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),),
              SizedBox(
               height: 8,
              ),
              Text("we also talk about the future of work as robot advance, and we ask whether a retro phones",style: TextStyle(
                color: Colors.grey.shade600,
              ),)
            ],
          ),
        )
      ],
    );
  }
}
