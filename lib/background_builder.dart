import 'package:flutter/material.dart';
import 'package:flutter_test_task/domain/models/user.dart';
import 'package:flutter_test_task/presentation/widgets/info_list_widget.dart';
import 'package:flutter_test_task/provider/background_color_from_rgb.dart';
import 'package:provider/provider.dart';

///Show changed background color while tapping on display
class BackgroundBuilder extends StatefulWidget {
  @override
  State<BackgroundBuilder> createState() => _BackgroundBuilderState();
}

class _BackgroundBuilderState extends State<BackgroundBuilder> {
  final _model = User();
  final backgroundInstanse = Provider.of<BackgroundColorFromRGB>;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundInstanse(context).color,
      body: InkWell(
        onTap: () {
          setState(() {
            backgroundInstanse(context, listen: false).changeBackgroundColor();
            backgroundInstanse(context, listen: false)
                .setNewColorAndNotifyListeners();
          });
        },
        child: Stack(
          children: [
            Center(
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
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
                top: 10,
                bottom: 5,
              ),
              child: InfoListWidget(
                model: _model,
                backgroundInstanse: backgroundInstanse,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
