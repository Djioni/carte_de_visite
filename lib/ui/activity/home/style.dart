import 'package:flutter/material.dart';

TextStyle subHeader =
    new TextStyle(color: Colors.white, fontSize: 15.0, fontFamily: 'Avenir');
TextStyle header =
    new TextStyle(color: Colors.white, fontSize: 30.0, fontFamily: 'Avenir');
TextStyle title =
    new TextStyle(color: Colors.white, fontSize: 35.0, fontFamily: 'Avenir');
TextStyle subtitle =
    new TextStyle(color: Colors.white, fontSize: 12.0, fontFamily: 'Avenir');
TextStyle itemStyle =
    new TextStyle(color: Colors.white, fontSize: 20.0, fontFamily: 'Avenir');
BoxDecoration decoration = new BoxDecoration(
  image: new DecorationImage(
    image: new AssetImage("assets/images/global/home_bg.jpg"),
    fit: BoxFit.cover,
  ),
);
BoxDecoration border = new BoxDecoration(
  border: new Border(
    bottom: new BorderSide(color: Colors.white, width: 0.5),
  ),
);
