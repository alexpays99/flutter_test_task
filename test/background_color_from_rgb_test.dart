import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_task/consts.dart';
import 'package:flutter_test_task/provider/background_color_from_rgb.dart';

void main() {
  group('CHECK RANDOM GROUP:', () {
    test('generated value less than amountOfRandomColors', () {
      final randomValue = BackgroundColorFromRGB();

      expect(
        randomValue.generateRandomValue(amountOfRandomColors),
        randomValue.getRandomValue,
      );
    });

    test('generated value not more than amountOfRandomColors', () {
      final randomValue = BackgroundColorFromRGB();
      final moreThanAmountOfRandomColors = amountOfRandomColors +
          randomValue.generateRandomValue(amountOfRandomColors);

      expect(
        randomValue.generateRandomValue(moreThanAmountOfRandomColors),
        randomValue.getRandomValue,
      );
    });
  });

  group('CHECK COLORS GROUP:', () {
    test('color changes after new generated value', () {
      final backgroundColorFromRGBInatance = BackgroundColorFromRGB();

      backgroundColorFromRGBInatance.changeBackgroundColor();
      backgroundColorFromRGBInatance.setNewColorAndNotifyListeners();
      final result1 = backgroundColorFromRGBInatance
          .setNewColor(backgroundColorFromRGBInatance.changeBackgroundColor());
      expect(result1, backgroundColorFromRGBInatance.color);

      backgroundColorFromRGBInatance.changeBackgroundColor();
      backgroundColorFromRGBInatance.setNewColorAndNotifyListeners();
      final result2 = backgroundColorFromRGBInatance
          .setNewColor(backgroundColorFromRGBInatance.changeBackgroundColor());
      expect(result2, backgroundColorFromRGBInatance.color);

      backgroundColorFromRGBInatance.changeBackgroundColor();
      backgroundColorFromRGBInatance.setNewColorAndNotifyListeners();
      final result3 = backgroundColorFromRGBInatance
          .setNewColor(backgroundColorFromRGBInatance.changeBackgroundColor());
      expect(result3, backgroundColorFromRGBInatance.color);
    });

    test('amount of unique colors in range from 0 to amountOfRandomColors', () {
      final randomValue = BackgroundColorFromRGB();
      randomValue.addRandomColorsToList();
      expect(randomValue.colorList.length, amountOfRandomColors);
    });

    test('all colors in list are different from each other', () {
      final randomValue = BackgroundColorFromRGB();

      randomValue.addRandomColorsToList();
      expect(randomValue.colorList[5], randomValue.colorList[5]);
      expect(randomValue.colorList[6], randomValue.colorList[6]);
      expect(randomValue.colorList[7], randomValue.colorList[7]);
    });
  });
}
