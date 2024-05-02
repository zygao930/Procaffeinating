import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  final void Function(int)? onTabChange; // Define the onTabChange callback
  const MyBottomNavBar({Key? key, required this.onTabChange}) : super(key: key); // Use Key? key and include the onTabChange parameter

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),

      child: GNav(
        color: Colors.grey[400],
        activeColor: Colors.grey.shade900,
        tabBackgroundColor: Colors.grey.shade100,
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 16,
        onTabChange: (value) => onTabChange!(value), // Call the provided onTabChange callback

        tabs: const [
          GButton(
            icon: Icons.home, // Use Icon widget for icon
            text: 'Shop',
          ),
          GButton(
            icon: Icons.shopping_bag_rounded, // Use Icon widget for icon
            text: 'Cart',
          ),
        ],
        selectedIndex: 0, // Provide a selected index
        //onTabChange: (index) {}, // Provide an onTabChange callback
      ),
    );
  }
}
