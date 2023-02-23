import 'package:flutter/material.dart';
import 'package:mon_artisan_project/screems/bill_page.dart';
import 'package:mon_artisan_project/screems/favorite_page.dart';
import 'package:mon_artisan_project/screems/profile_page.dart';

import 'package:google_nav_bar/google_nav_bar.dart';

import 'home.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _tabs = const [
    Home(),
    BillPage(),
    FavoritePage(),
    ProfilePage()
  ];
  @override
  Widget build(BuildContext context) => Scaffold(
      bottomNavigationBar: GNav(
        onTabChange: (newIndex) => setState(() {
          _selectedIndex = newIndex;
        }),
        backgroundColor: const Color.fromARGB(255, 15, 2, 131),
        color: Colors.white,
        activeColor: Colors.orange,
        tabBackgroundColor: Colors.white,
        tabBorderRadius: 50,
        gap: 5,
        padding: const EdgeInsets.all(20),
        tabs: const [
          GButton(
            icon: Icons.home,
          ),
          GButton(
            icon: Icons.wallet,
          ),
          GButton(
            icon: Icons.favorite,
          ),
          GButton(
            icon: Icons.person,
          )
        ],
      ),
      body: _tabs[_selectedIndex]);
}

