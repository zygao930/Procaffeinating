import 'package:flutter/material.dart';
import 'package:flutter_dart_andriod/components/bottom_nav_bar.dart';
import 'package:flutter_dart_andriod/pages/shop_page.dart';

import 'cart_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
          icon: const Icon(
              Icons.menu,
              color: Colors.black,
          ),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        )
      ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.brown[900],
        child: Column(
          children: [
            //logo
            DrawerHeader(
                child: Image.asset(
                  'lib/image/logo1.png',
                  color: Colors.white,
                )
            ),

            const Padding(
              padding: const EdgeInsets.only(left: 50.0),
              child: ListTile(
                leading: Icon(
                    Icons.home,
                  color: Colors.white,
                ),
                title: Text(
                    'Home',
                  style: TextStyle(color: Colors.white),
                )
              ),
            ),

            const Padding(
              padding: const EdgeInsets.only(left: 50.0),
              child: ListTile(
                  leading: Icon(
                    Icons.info,
                    color: Colors.white,
                  ),
                  title: Text(
                    'About',
                    style: TextStyle(color: Colors.white),
                  )
              ),
            ),

            const Padding(
              padding: const EdgeInsets.only(left: 50.0),
              child: ListTile(
                  leading: Icon(
                    Icons.logout,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Logout',
                    style: TextStyle(color: Colors.white),
                  )
              ),
            )

            //other pages
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }

  //this method update selected index
  //when the user taps on the bottom bar
  navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //pages to display
  final List<Widget> _pages = [
    //shop page
    const ShopPage(),
    const CartPage(),
  ];
}

