import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_test_task/background_builder.dart';
import 'package:flutter_test_task/provider/background_color_from_rgb.dart';
import 'package:provider/provider.dart';

void main() {
  Provider.debugCheckInvalidValueType = null;
  runApp(
    Provider(
      create: (context) => BackgroundColorFromRGB(),
      child: const Main(),
    ),
  );
}

///Head of other widgets
class Main extends StatelessWidget {
  ///asdasd
  const Main({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BackgroundBuilder(),
    );
  }
}
