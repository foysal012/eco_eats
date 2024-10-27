import 'package:eco_eats/resource/app_colors/app_colors.dart';
import 'package:eco_eats/screen/bottom_nav_bar_pages/cart_page.dart';
import 'package:eco_eats/screen/bottom_nav_bar_pages/favourite_page.dart';
import 'package:eco_eats/screen/bottom_nav_bar_pages/home_page.dart';
import 'package:eco_eats/screen/bottom_nav_bar_pages/profile_page.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  List<Widget> pages = [
    const HomePage(),
    const FavouritePage(),
    const CartPage(),
    const ProfilePage()
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: pages[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.primaryColor,
        selectedItemColor: AppColors.appWhite,
        unselectedItemColor: Colors.white54,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        unselectedLabelStyle: TextStyle(color: Colors.white),
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
              label: 'Home',
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outlined),
              label: 'Favourite',
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined),
              label: 'Cart',
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            )
          ]
      ),
    );
  }
}
