import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:pfe_app/Screens/Favourites.dart';
import 'package:pfe_app/Screens/HomeScreen.dart';
import 'package:pfe_app/Screens/PlantIDpage.dart';
import 'package:pfe_app/Screens/TipsPage.dart';
import 'package:pfe_app/Screens/UserProfile.dart';

class Nav extends StatefulWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  int sindex = 0; //selected index
  final screens = [HomeScreen(), PlantIDpage(), TipsPage(),UserProfile()];
  void itemTapped(int index) {
    setState(() {
      sindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEEEEEE),
      body: screens[sindex],
      extendBody: true,
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: FloatingNavbar(
          margin: EdgeInsets.only(bottom: 20),
          width: 343,
          borderRadius: 5,
          iconSize: 30,
          selectedBackgroundColor: Color(0xffFAFAFA),
          backgroundColor: Color(0xffFAFAFA),
          unselectedItemColor: Color(0xff098256),
          selectedItemColor: Color(0xff098256),
          items: [
            FloatingNavbarItem(
              icon: Icons.home,
            ),
            FloatingNavbarItem(icon: Icons.camera_alt),
            FloatingNavbarItem(icon: Icons.help),
            FloatingNavbarItem(icon: Icons.person),
          ],
          currentIndex: sindex,
          onTap: itemTapped,
        ),
      ),
    );
  }
}
