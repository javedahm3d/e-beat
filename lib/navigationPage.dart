import 'package:e_beat/colors.dart';
import 'package:e_beat/pages/alertsPage.dart';
import 'package:e_beat/pages/homepage.dart';
import 'package:e_beat/pages/profilePage.dart';
import 'package:e_beat/pages/settingsPage.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class navigationPage extends StatefulWidget {
  const navigationPage({super.key});

  @override
  State<navigationPage> createState() => _navigationPageState();
}

class _navigationPageState extends State<navigationPage> {
  late PageController _pageController;
  // int _page = 0;
  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  // void onPageChanged(int page) {
  //   setState(() {
  //     _page = page;
  //   });
  // }

  void navigationPageSelected(int page) {
    _pageController.jumpToPage(page);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        // onPageChanged: onPageChanged,
        physics: const NeverScrollableScrollPhysics(),
        children: [HomePage(), AlertPage(), SettingsPage(), ProfilePage()],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
              color: mainThemeColor,
              // borderRadius: BorderRadius.only(
              //   topRight: Radius.circular(20),
              //   topLeft: Radius.circular(20),
              // )
              borderRadius: BorderRadius.circular(20)),
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
          child: GNav(
              backgroundColor: mainThemeColor,
              color: Color.fromARGB(190, 255, 255, 255),
              activeColor: Colors.white,
              tabBackgroundColor: Colors.white30,
              iconSize: 30,
              padding: EdgeInsets.all(14),
              onTabChange: navigationPageSelected,
              tabs: [
                GButton(icon: Icons.home, gap: 8, text: 'home'),
                GButton(icon: Icons.notifications, gap: 8, text: 'alerts'),
                GButton(icon: Icons.settings, gap: 8, text: 'settings'),
                GButton(icon: Icons.person, gap: 8, text: 'profile'),
              ]),
        ),
      ),
    );
  }
}
