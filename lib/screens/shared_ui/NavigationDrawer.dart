import 'package:flutter/material.dart';
import 'package:flutter_app11/models/NavMenuItem.dart';
import 'package:flutter_app11/screens/home_screen.dart';
import 'package:flutter_app11/screens/home_tabs/headline_news.dart';
import 'package:flutter_app11/screens/home_tabs/instagram_feeds.dart';
import 'package:flutter_app11/screens/home_tabs/twitter_feed.dart';
import 'package:flutter_app11/screens/home_tabs/facebook_feeds.dart';

class navigationdrawer extends StatefulWidget {
  @override
  _navigationdrawerState createState() => _navigationdrawerState();
}

class _navigationdrawerState extends State<navigationdrawer> {
  List<NavMenuITem> navigationMenu = [
    NavMenuITem("Explore", ()=> HomeScreen() ),
    NavMenuITem("Headline News", ()=> HeadlineNews() ),
    NavMenuITem('Twitter Feed', ()=> TwitterFeed()),
    NavMenuITem("Instagram Feeds",()=> InstagramFeeds()),
    NavMenuITem("Facebook Feeds",()=> FacebookFeeds()),


  ];


  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(top: 40,left: 14),
        child: ListView.builder(
          itemBuilder: (context, position) {
            return ListTile(
              title: Text(navigationMenu[position].title,style: TextStyle(
                color: Colors.grey.shade700,
                fontSize: 16.5
              ),),
              trailing: Icon(
                Icons.chevron_right,
                color: Colors.grey.shade400,
              ),
              onTap: () {
                 Navigator.pop(context);
                 Navigator.push(context, MaterialPageRoute(builder: (context){
                   return navigationMenu[position].destination();
                 }
                 )
                 );
              },
            );
          },
          itemCount: navigationMenu.length ,
        ),
      ),
    );
  }
}
