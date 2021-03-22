import 'dart:math';

import 'package:visit_card/core/presenters/contracts/splash_activity_contract.dart';
import 'package:visit_card/core/presenters/splash_activity_presenter.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

import '../../routes.dart';


class SplashActivity extends StatefulWidget {
  @override
  _SplashActivityState createState() => _SplashActivityState();
}

class _SplashActivityState extends State<SplashActivity> with TickerProviderStateMixin implements SplashActivityView  {
  SplashActivityPresenter presenter;
  Animation<double> animation;
  AnimationController controller;
  Animation<double> animation1;
  AnimationController controller1;
  double value = 150.0;
  int i = 0;
  bool show = false;
  double visiblity = 0.0;

  @override
  void initState() {
    super.initState();
    presenter = SplashActivityPresenter(this);
    controller = new AnimationController(duration: const Duration(milliseconds: 600), vsync: this);
    animation = new Tween(begin: 150.0, end: 170.0).animate(controller)
      ..addListener(() {
        setState(() {
          value = animation.value.toDouble();
          if (animation.value == 150.0 || animation.value == 170.0) {
            i++;
          }
        });
      })
      ..addStatusListener((status) {
        if ((status == AnimationStatus.completed ||
            status == AnimationStatus.dismissed) &&
            i > 8) {

          //navigateToHomeorLogin

        }
        if (status == AnimationStatus.completed && i <= 8) {
          controller.reverse();
        } else if (status == AnimationStatus.dismissed && i <= 8) {
          controller.forward();
        }
      });
    controller.forward();
  }

  /*********************************************************
   * Views Presenter
   ********************************************************/
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("assets/images/global/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: new Opacity(
          opacity: pow(value / 170.0, 2).clamp(0.0, 1.0),
          child: new Center(
            child: new Container(
                height: value,
                width: value,
                child: new Hero(
                  tag: "tick",
                  child: new Image.asset('assets/icons/logo.jpeg',
                      width: 150.0, height: 150.0, scale: 1.0),
                )),
          ),
        ),
      ),
    );
  }
  @override
  void toast(String message) => Toast.show(message, context);
  @override
  void finish()  {}

  /*********************************************************
   * Functions
   ********************************************************/






}
