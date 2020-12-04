import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../PageModels.dart';
import 'package:page_view_indicator/page_view_indicator.dart';
import 'home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart' show SharedPreferences;

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  List<PageModels> pages;
  ValueNotifier<int> _PageViewNotifier = ValueNotifier(0);

    void _Addpages() {
      pages = List<PageModels>();
     pages.add(PageModels(
         'Welcome! ',
         '1-Making friends is easy as waving your hand back and forth in easy step',
         Icons.ac_unit,
         'assets/images/first.png'),);
     pages.add(PageModels(
         'alarm! ',
         '2-Making friends is easy as waving your hand back and forth in easy step',
         Icons.alarm,
         'assets/images/second.png'),);
     pages.add(PageModels(
         'print! ',
         '3-Making friends is easy as waving your hand back and forth in easy step',
         Icons.print,
         'assets/images/third.png'),);
     pages.add(PageModels(
         'map! ',
         '4-Making friends is easy as waving your hand back and forth in easy step',
         Icons.map,
         'assets/images/fourth.png'),);
    }

  @override
  Widget build(BuildContext context) {

    _Addpages();

    return Stack(
      children: <Widget>[
        Scaffold(
          body: PageView.builder(
            itemBuilder: (context,index) {
              return Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: ExactAssetImage(pages[index].image),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Transform.translate(
                        child: Icon(
                          pages[index].icon,
                          size: 150,
                          color: Colors.white,
                        ),
                        offset: Offset(0, -100),
                      ),
                      Text(
                        pages[index].titile,
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 34, right: 34, top: 18),
                        child: Text(
                          pages[index].description,
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
            itemCount: pages.length,
            onPageChanged: (index){
             _PageViewNotifier.value = index ;
            },
          ),
        ),
       Transform.translate(
           offset: Offset(0,175),
         child: Align(
           alignment: Alignment.center,
           child: _displaypageindicator(pages.length), 
         ),

       ),
       Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 30, right: 12, left: 12),
            child: SizedBox(
              width: double.infinity,
              height: 50,
              child: RaisedButton(
                color: Colors.red.shade800,
                child: Text(
                  'GET STARTED',
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 1.5,
                    fontSize: 20,
                  ),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context){

                        return HomeScreen();
                      }
                      )
                  );
                },
              ),
            ),
          ),
        ),
     ],
    );
  }
  Widget _displaypageindicator(int length){
    return PageViewIndicator(
      pageIndexNotifier: _PageViewNotifier,
      length: length,
      normalBuilder: (animationController, index) => Circle(
        size: 8.0,
        color: Colors.grey,
      ),
      highlightedBuilder: (animationController, index) => ScaleTransition(
        scale: CurvedAnimation(
          parent: animationController,
          curve: Curves.ease,
        ),
        child: Circle(
          size: 12.0,
          color: Colors.red,
        ),
      ),
    );


  }

}




