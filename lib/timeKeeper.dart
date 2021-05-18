import 'dart:async';

import 'package:flutter/material.dart';
import 'globals.dart' as globals;


class TimeKeeper {
  int _counter = 0;

  int year = 0;
  int month = 0;
  int hour = 0;
  int day = 0;
  int timePassed = 0;
  String pluralCheck = "seconds";

  static void main() {
    Timer timer = Timer.periodic(Duration(seconds: 5), (Timer t) => _checkTime());
  }

  void _checkTime() {
    var lastTime = globals.currentTime;
    globals.currentTime = DateTime.now();

    year = globals.currentTime.year;
    month = globals.currentTime.month;
    hour = globals.currentTime.hour;
    day = globals.currentTime.day;

    timePassed = ((globals.currentTime.microsecondsSinceEpoch - lastTime.microsecondsSinceEpoch)/1000000).truncate();
    if (timePassed == 1) pluralCheck = "second";
    else pluralCheck = "seconds";

    if (timePassed >= 1) {

    }
  }








  }