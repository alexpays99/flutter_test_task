import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_test_task/consts.dart';

///This class is provider of randomly generated color and supplys ChangeNotifie
///to notify all listeners that should be notified after color changes.
class BackgroundColorFromRGB extends ChangeNotifier {
  ///Instance of class Random
  Random random;

  ///Set white color by default. this color should be changer on
  ///changeBackgroundWithRandomColor method
  Color _color = const Color(0xFFFFFFFF);

  ///getter of _color
  Color get color => _color;

  ///getter of _color
  //Random get random => _random;

  ///Constructor
  BackgroundColorFromRGB() : random = Random(0);

  /// generates random value of type T
  // T? generateRangomValue<T>({T? value}) {
  //   T? newValue;

  //   if (value is int) newValue = random?.nextInt(value) as T;
  //   if (value is double || value == null) newValue = random?.nextDouble() as T;
  //   // if (value is! int && value is! double) throw Exception("Wrong argument");

  //   return newValue;
  // }

  ///setter of _color
  Color setNewColor(Color value) {
    return _color = value;
  }

  ///generate new random color
  Color changeBackgroundWithRandomColor() {
    // Using Color.fromRGBO

    final newColor = Color.fromRGBO(
      random.nextInt(r),
      random.nextInt(g),
      random.nextInt(b),
      random.nextDouble(),
    );

    // final newColor = Color.fromRGBO(
    //   random?.nextInt(r) as int,
    //   random?.nextInt(g) as int,
    //   random?.nextInt(b) as int,
    //   random?.nextDouble() as double,
    // );

    // final newColor = Color.fromRGBO(
    //   generateRangomValue<int>(value: r) as int,
    //   generateRangomValue<int>(value: g) as int,
    //   generateRangomValue<int>(value: b) as int,
    //   generateRangomValue<double>() as double,
    // );

    return newColor;
  }

  ///set generated color from changeBackgroundWithRandomColor() to _color and
  /// notify listeners about changes.
  void setNewColorAndNotifyListeners() {
    //_color = changeBackgroundWithRandomColor();
    final newColor = changeBackgroundWithRandomColor();
    setNewColor(newColor);
    notifyListeners();
  }
}
