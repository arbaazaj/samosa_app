import 'package:flutter/material.dart';
import 'package:samosa_app/screens/product_page.dart';
import 'package:samosa_app/themes/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.buttonRadius = 64.0});

  final double buttonRadius;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        overlayColor: const MaterialStatePropertyAll(darkGrey),
        elevation: const MaterialStatePropertyAll(16.0),
        padding: const MaterialStatePropertyAll(
          EdgeInsets.only(left: 48.0, right: 48.0, top: 14, bottom: 14.0),
        ),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(buttonRadius),
          ),
        ),
        backgroundColor: const MaterialStatePropertyAll(lightOrange),
      ),
      onPressed: () => Navigator.push(context,
          MaterialPageRoute(builder: (context) => const ProductPage())),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Add to Dish',
            style: TextStyle(
                color: lightWhite, fontSize: 18.0, fontWeight: FontWeight.w500),
          ),
          const SizedBox(width: 8.0),
          Image.asset(
            'assets/dish_icon.png',
            height: 32,
            width: 32,
          ),
        ],
      ),
    );
  }
}
