import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:samosa_app/themes/colors.dart';
import 'package:samosa_app/widgets/custom_app_bar.dart';
import 'package:samosa_app/widgets/custom_button.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/grain.png'),
            fit: BoxFit.fill,
            filterQuality: FilterQuality.high,
            opacity: 0.2,
          ),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [darkGrey, black],
          ),
        ),
        child: Column(
          children: [
            const Flexible(child: CustomAppBar(imageName: 'assets/back.png')),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  AspectRatio(
                    aspectRatio: 2 / 3,
                    child: Image.asset(
                      'assets/bowl_of_samosa.png',
                      fit: BoxFit.cover,
                      width: 500,
                      height: 500,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.92,
                        height: MediaQuery.of(context).size.height * 0.6,
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 30.0,
                              spreadRadius: 20.0,
                              blurStyle: BlurStyle.outer,
                            )
                          ],
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(64.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(32.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Spicy',
                                style: TextStyle(
                                  color: lightOrange,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 24.0,
                                ),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              const Text(
                                'Chinese Samosa',
                                style: TextStyle(
                                  height: 1.1,
                                  color: lightWhite,
                                  fontSize: 48,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              Text(
                                'Chinese samosa a deep-fried snack'
                                ' prepared with homemade '
                                'pastry sheets and tasty noodles stuffing.',
                                style: TextStyle(
                                  color: Colors.amber.shade800,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17.0,
                                ),
                              ),
                              const SizedBox(height: 10.0),
                              const Text(
                                '₹ 180',
                                style: TextStyle(
                                  color: lightWhite,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500,
                                ),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
