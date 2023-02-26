import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:samosa_app/themes/colors.dart';
import 'package:samosa_app/widgets/custom_button.dart';

class BlurCardWidget extends StatelessWidget {
  const BlurCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.92,
        height: MediaQuery.of(context).size.height * 0.6,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(64.0),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(32.0),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Spicy',
                    style: TextStyle(
                      color: lightWhite,
                      fontWeight: FontWeight.w400,
                      fontSize: 24.0,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Chinese Samosa',
                    style: TextStyle(
                      height: 1.1,
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 48,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Text(
                    'Chinese samosa a deep-fried snack'
                        ' prepared with homemade '
                        'pastry sheets and tasty noodles stuffing.',
                    style: TextStyle(
                      color: lightWhite,
                      fontSize: 17.0,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  const Text(
                    '₹ 180',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 40.0),
                  const Center(
                      child: CustomButton(buttonRadius: 12.0)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}