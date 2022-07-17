import 'package:flutter/material.dart';
import 'package:flutter_test_task/consts.dart';
import 'package:flutter_test_task/domain/models/user.dart';
import 'package:flutter_test_task/provider/background_color_from_rgb.dart';

///Displays list of Users inside of container
class InfoListWidget extends StatelessWidget {
  ///
  final User _model;

  ///
  final BackgroundColorFromRGB Function(BuildContext context, {bool listen})
      backgroundInstanse;

  ///
  const InfoListWidget({
    Key? key,
    required User model,
    required this.backgroundInstanse,
  })  : _model = model,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _model.pokemonList.length,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 4.0),
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              color: Color.fromARGB(88, 219, 176, 48),
            ),
            child: Row(
              children: [
                Container(
                  width: width,
                  height: height,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: backgroundInstanse(context).color,
                  ),
                ),
                const SizedBox(width: 130),
                Text(
                  _model.pokemonList[index],
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
