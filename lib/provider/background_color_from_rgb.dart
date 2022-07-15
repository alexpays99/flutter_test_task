import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_test_task/consts.dart';

///This class is provider of randomly generated color and supplys ChangeNotifie
///to notify all listeners that should be notified after color changes.
class BackgroundColorFromRGB extends ChangeNotifier {
  ///Instance of class Random
  Random random = Random();

  ///random value
  int getRandomValue = 0;

  ///List of random colors. Creates special for testing.
  final List<Color> colorList = <Color>[];

  ///Set white color by default. this color should be changer on
  ///changeBackgroundWithRandomColor method
  Color _color = const Color(0xFFFFFFFF);

  ///getter of _color
  Color get color => _color;

  ///setter of _color
  Color setNewColor(Color value) {
    return _color = value;
  }

  ///get new random
  int generateRandomValue(int value) {
    final result = random.nextInt(value);
    getRandomValue = result;

    return result;
  }

  ///add random colors to list. this method dedicated special for testing
  ///to check quantity of generated colors and compare to [amountOfRandomColors]
  void addRandomColorsToList() {
    for (int i = 0; i < amountOfRandomColors; i++) {
      final color = Color.fromRGBO(
        random.nextInt(r),
        random.nextInt(g),
        random.nextInt(b),
        random.nextDouble(),
      );
      colorList.add(color);
    }
  }

  ///generate new color
  Color changeBackgroundColor() {
    // Using Color.fromRGBO
    final newColor = Color.fromRGBO(
      random.nextInt(r),
      random.nextInt(g),
      random.nextInt(b),
      random.nextDouble(),
    );

    return newColor;
  }

  ///set generated color from [changeBackgroundColor] to _color and
  /// notify listeners about changes.
  void setNewColorAndNotifyListeners() {
    final newColor = changeBackgroundColor();
    setNewColor(newColor);
    notifyListeners();
  }
}
