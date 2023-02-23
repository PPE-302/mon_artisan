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
        padding: const EdgeInsets.all(13),
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
            icon: Icons.person_2_rounded,
          )
        ],
      ),
      body: _tabs[_selectedIndex]);
}

class AppBar extends StatefulWidget {
  const AppBar({
    super.key,
  });

  @override
  State<AppBar> createState() => _AppBarState();
}

class _AppBarState extends State<AppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 10),
      decoration: BoxDecoration(
        color: Colors.orange.shade300,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const IconButton(
                icon: Icon(
                  Icons.sort_rounded,
                  size: 30,
                ),
                color: Colors.white,
                onPressed: null,
              ),
              const IconButton(
                icon: Icon(
                  Icons.category_rounded,
                  size: 30,
                ),
                color: Colors.white,
                onPressed: null,
              ),
            ],
          ),
          const SizedBox(height: 20),
          // ignore: prefer_const_constructors
          Padding(
            padding: const EdgeInsets.only(left: 3, bottom: 15),
            // ignore: prefer_const_constructors
            child: Text(
              "Mon Artisan",
              // ignore: prefer_const_constructors
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                letterSpacing: 1,
                wordSpacing: 2,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 5, bottom: 20),
            width: MediaQuery.of(context).size.width,
            height: 55,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Search here....",
                hintStyle: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                ),
                prefixIcon: const Icon(
                  Icons.search,
                  size: 25,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
