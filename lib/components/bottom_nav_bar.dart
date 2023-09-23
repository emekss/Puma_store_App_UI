import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  final void Function(int)? onTabChange;
  const MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: GNav(
          color: const Color.fromARGB(255, 92, 91, 91),
          tabBorderRadius: 12,
          activeColor: Colors.black,
          tabActiveBorder: Border.all(color: Colors.white),
          mainAxisAlignment: MainAxisAlignment.center,
          tabBackgroundColor: Colors.grey.shade100,
          gap: 8,
          onTabChange: (value) => onTabChange!(value),
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Shop',
            ),
            GButton(
              icon: Icons.shopping_bag_rounded,
              text: 'Cart',
            )
          ]),
    );
  }
}
