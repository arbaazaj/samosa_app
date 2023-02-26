import 'package:flutter/material.dart';
import 'package:samosa_app/themes/colors.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {Key? key, this.topPadding = 50.0, this.imageName = 'assets/samosa.png'})
      : super(key: key);

  /// Default value of [topPadding] is 50.0
  final double topPadding;
  final String imageName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: topPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 32.0),
            child: Image.asset(imageName,
              color: lightWhite,
              height: 32.0,
              width: 32.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 32.0),
            child: Image.asset(
              'assets/asana.png',
              color: lightWhite,
              height: 32.0,
              width: 32.0,
            ),
          ),
        ],
      ),
    );
  }
}
