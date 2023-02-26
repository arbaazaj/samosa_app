import 'package:flutter/material.dart';
import 'package:samosa_app/themes/colors.dart';
import 'package:samosa_app/widgets/custom_bottom_navbar_widget.dart';
import 'package:samosa_app/widgets/item_card_widget.dart';
import 'package:samosa_app/widgets/top_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            // Custom App
            TopWidget(),
            // Spacing
            SizedBox(height: 8.0),
            // Product card
            ItemCard(),
            // Bottom Navigation Bar
            CustomBottomNavBar(),
          ],
        ),
      ),
    );
  }
}
