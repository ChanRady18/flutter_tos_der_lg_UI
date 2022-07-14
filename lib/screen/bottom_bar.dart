import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/favorite_page.dart';
import 'package:flutter_application_1/screen/homepage.dart';
import 'package:flutter_application_1/screen/location_page.dart';
import 'package:flutter_application_1/screen/user_info.dart';
import 'package:iconsax/iconsax.dart';

class BottomBar extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  static var routeName;

  const BottomBar({Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  late List<Map<String, Widget>> _pages;
  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages = [
      {
        'page': const HomePage(),
      },
      {
        'page': const FavoritePage(),
      },
      {
        'page': const LocationPage(),
      },
      {
        'page': const UserInfo(),
      }
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: CustomNavigationBar(
          isFloating: true,
          currentIndex: _selectedPageIndex,
          iconSize: 26.0,
          selectedColor: Colors.white,
          strokeColor: const Color(0x300c18fb),
          unSelectedColor: Colors.grey[600],
          backgroundColor: Colors.black,
          borderRadius: const Radius.circular(20.0),
          // enableFloatingNavBar: false,
          onTap: _selectPage,
          items: [
            /// Home
            CustomNavigationBarItem(
              icon: const Icon(Iconsax.house),
            ),

            /// Likes
            CustomNavigationBarItem(
              icon: const Icon(Iconsax.heart4),
            ),

            /// Search
            CustomNavigationBarItem(
              icon: const Icon(Iconsax.location4),
            ),

            /// Profile
            CustomNavigationBarItem(
              icon: const ImageIcon(
                AssetImage("assets/images/profile.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
