import 'package:flutter/material.dart';
import 'package:shopping_app/screens/discoverscreen.dart';
import 'package:shopping_app/screens/favourite_screen.dart';
import 'package:shopping_app/screens/profile_screen.dart';

import '../screens/home.dart';

class BottomNavigationBarr extends StatefulWidget {
  const BottomNavigationBarr({super.key});

  @override
  State<BottomNavigationBarr> createState() => _BottomNavigationBarrState();
}

class _BottomNavigationBarrState extends State<BottomNavigationBarr> {
  int _currentIndex = 0;
  List<Widget> screens = [
    const HomeScreen(),
    const DiscoverScreen(),
    const FavouriteScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.orange[300],
        type: BottomNavigationBarType.fixed,
        iconSize: 25,
        backgroundColor: Colors.white,
        elevation: 0,
        currentIndex: _currentIndex,
        onTap: ((value) => setState(
              () {
                _currentIndex = value;
              },
            )),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.grid_view,
              ),
              label: "discover"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_outline,
              ),
              label: "favourite"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: "profile"),
        ],
      ),
    );
  }
}
