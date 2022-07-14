import 'package:flutter/material.dart';
import 'package:flutter_test_task/provider/background_color_from_rgb.dart';
import 'package:provider/provider.dart';

///Show changed background color while tapping on display
class BackgroundBuilder extends StatefulWidget {
  @override
  State<BackgroundBuilder> createState() => _BackgroundBuilderState();
}

class _BackgroundBuilderState extends State<BackgroundBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Provider.of<BackgroundColorFromRGB>(context).color,
      body: InkWell(
        onTap: () {
          setState(() {
            Provider.of<BackgroundColorFromRGB>(context, listen: false)
                .setNewColorAndNotifyListeners();
          });
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text(
                'Hey there',
                style: TextStyle(fontSize: 25),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
