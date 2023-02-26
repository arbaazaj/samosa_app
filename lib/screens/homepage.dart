import 'package:flutter/material.dart';
import 'package:samosa_app/themes/colors.dart';
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
      // bottomNavigationBar: Padding(
      //   padding: const EdgeInsets.only(bottom: 16.0, top: 16.0, left: 32.0, right: 32.0),
      //   child: BottomNavigationBar(
      //     selectedItemColor: Colors.white,
      //     unselectedItemColor: veryLightWhite,
      //     items: const [
      //       BottomNavigationBarItem(
      //         label: 'Home',
      //         icon: Icon(Icons.home_outlined),
      //       ),
      //       BottomNavigationBarItem(
      //         label: 'Search',
      //         icon: Icon(Icons.search_outlined),
      //       ),
      //       BottomNavigationBarItem(
      //         label: 'Profile',
      //         icon: Icon(Icons.account_circle_outlined),
      //       ),
      //     ],
      //   ),
      // ),
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
          children: [
            const TopWidget(),
            const SizedBox(
              height: 8.0,
            ),
            const ItemCard(),
            Padding(
              padding:
                  const EdgeInsets.only(left: 32.0, right: 32.0, top: 32.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(18.0),
                child: BottomNavigationBar(
                  currentIndex: 0,
                  selectedItemColor: Colors.white,
                  unselectedItemColor: veryLightWhite,
                  elevation: 10.0,
                  iconSize: 26.0,
                  items: const [
                    BottomNavigationBarItem(
                      label: 'Home',
                      icon: Icon(Icons.home_outlined),
                    ),
                    BottomNavigationBarItem(
                      label: 'Search',
                      icon: Icon(Icons.search_outlined),
                    ),
                    BottomNavigationBarItem(
                      label: 'Profile',
                      icon: Icon(Icons.account_circle_outlined),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
