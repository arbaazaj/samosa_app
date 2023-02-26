import 'package:flutter/material.dart';
import 'package:samosa_app/themes/colors.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32.0, right: 32.0, top: 32.0),
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
    );
  }
}