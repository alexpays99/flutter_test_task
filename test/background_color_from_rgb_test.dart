import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_task/consts.dart';
import 'package:flutter_test_task/provider/background_color_from_rgb.dart';
import 'package:mockito/mockito.dart';

void main() {
  test('generates numbers from 0 to 16777216 test', () {
    ///Arrange
    final backgroundColorFromRGBO = MockBackgroundColorFromRGB();
    final randomMoreThanAmountOfRandomColors = amountOfRandomColors +
        backgroundColorFromRGBO.random.nextInt(amountOfRandomColors);

    when(
      backgroundColorFromRGBO.random
          .nextInt(randomMoreThanAmountOfRandomColors),
    ).thenThrow('Argument more than expected');
    when(
      backgroundColorFromRGBO.random.nextInt(0),
    ).thenThrow('Argument less than expected');

    ///Act
    final result = backgroundColorFromRGBO.random.nextInt(amountOfRandomColors);

    ///Assert
    expect(result, 0);
  });

  test('Color has changes with random opacity test', () {
    ///Arrange
    final backgroundColorFromRGBO = MockBackgroundColorFromRGB();
    final opacity = backgroundColorFromRGBO.random.nextDouble();
    final newColor = Color.fromRGBO(r, g, b, opacity);

    ///Act
    backgroundColorFromRGBO.setNewColor(newColor);
    final result = backgroundColorFromRGBO.color;

    ///Assert
    expect(result, const Color.fromRGBO(r, g, b, 0.5));
  });
}

class MockBackgroundColorFromRGB extends Mock
    implements BackgroundColorFromRGB {}
