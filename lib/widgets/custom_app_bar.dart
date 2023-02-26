import 'package:flutter/material.dart';
import 'package:samosa_app/themes/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {Key? key, this.topPadding = 50.0, this.imageName = 'assets/samosa.png', required this.onTap, this.size = 50.0})
      : super(key: key);

  /// Default value of [topPadding] is 50.0
  final double topPadding;
  final String imageName;
  final VoidCallback onTap;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: topPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 32.0),
            child: GestureDetector(
              onTap: onTap,
              child: Image.asset(imageName,
                color: lightWhite,
                height: 32.0,
                width: 32.0,
              ),
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

  @override
  Size get preferredSize => Size.fromHeight(size);
}
