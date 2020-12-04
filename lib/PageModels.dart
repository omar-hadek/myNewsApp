import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import'package:flutter_app11/screens/OnBoarding.dart';


class PageModels {
  String _titile;
  String _description;
  IconData _icon;
  String _image;

  PageModels(this._titile, this._description, this._icon, this._image);

  String get image => _image;

  IconData get icon => _icon;

  String get description => _description;

  String get titile => _titile;
}