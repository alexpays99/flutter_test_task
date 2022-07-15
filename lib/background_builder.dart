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
              child: ListView.builder(
                itemCount: 10,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 4.0),
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          bottomLeft: Radius.circular(50),
                        ),
                        color: Color.fromARGB(88, 219, 176, 48),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 20),
                          const Text(
                            'DATA DATA DATA DATA DATA',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
