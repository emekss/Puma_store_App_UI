import 'package:flutter/material.dart';
import 'package:puma_store_app/components/bottom_nav_bar.dart';
import 'package:puma_store_app/pages/cart_page.dart';
import 'package:puma_store_app/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
// int to track selected index
  int _selectedindex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  final List<Widget> _pages = [
    const ShopPage(),
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 148, 166, 132),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Padding(
              padding: EdgeInsets.only(left: 12.0),
              child: Icon(
                Icons.menu,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 97, 130, 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                DrawerHeader(
                  child: Image.asset(
                    'assets/images/puma_logo.png',
                    color: Colors.white,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
                //home
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    onTap: () => Navigator.pushNamed(context, '/shopPage'),
                    iconColor: Colors.white,
                    textColor: Colors.white,
                    leading: const Icon(Icons.home),
                    title: const Text('H O M E'),
                  ),
                ),
                //about
                const Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    iconColor: Colors.white,
                    textColor: Colors.white,
                    leading: Icon(Icons.info),
                    title: Text('A B O U T'),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25.0, bottom: 25.0),
              child: ListTile(
                iconColor: Colors.white,
                textColor: Colors.white,
                leading: Icon(Icons.logout_rounded),
                title: Text('L O G O U T'),
              ),
            ),
          ],
        ),
      ),
      body: _pages[_selectedindex],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
    );
  }
}
