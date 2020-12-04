import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'screens/OnBoarding.dart';
import 'PageModels.dart';
import 'screens/utilities/appTheme.dart';
import 'screens/home_screen.dart';


    main(){

      runApp(NewsApp());
    }

    class NewsApp extends StatelessWidget {
  @override
      Widget build(BuildContext context) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme:apptheme.Apptheme,

          home:HomeScreen(),
        );
      }


    }





