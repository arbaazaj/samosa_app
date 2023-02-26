import 'package:flutter/material.dart';
import 'package:samosa_app/themes/colors.dart';
import 'package:samosa_app/widgets/blur_card_widget.dart';
import 'package:samosa_app/widgets/custom_app_bar.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // This applies background texture and gradient.
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
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  // Background Samosa Image
                  // This is on the bottom of the Stack.
                  AspectRatio(
                    aspectRatio: 2 / 3,
                    child: Container(
                      height: 500,
                      width: 500,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          colorFilter: ColorFilter.mode(
                              Colors.black26, BlendMode.darken),
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/bowl_of_samosa.png',
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Blur Card
                  // This is in the middle of the Stack.
                  const BlurCardWidget(),
                  // Top Navigation Bar
                  // This is on the top of the Stack.
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: CustomAppBar(
                        imageName: 'assets/back.png',
                        onTap: () => Navigator.pop(context),
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
