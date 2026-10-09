import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/features/home/screens/home_screen.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:movie_app/core/styling/app_colors.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    HomeScreen(),
    Center(
      child: Text('Watch List', style: TextStyle(color: Colors.white)),
    ),
    Center(
      child: Text('Profile', style: TextStyle(color: Colors.white)),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: _screens[_currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: AppColors.backgroundColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 10.r,
              offset: const Offset(0, -1),
            ),
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
            child: SalomonBottomBar(
              currentIndex: _currentIndex,
              onTap: (index) => setState(() => _currentIndex = index),
              margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
              itemPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              selectedItemColor: Colors.blueAccent,
              unselectedItemColor: Colors.grey,
              items: [
                /// Home
                SalomonBottomBarItem(
                  icon: const Icon(CupertinoIcons.home),
                  activeIcon: const Icon(CupertinoIcons.home),
                  title: const Text('Home'),
                  selectedColor: Colors.blueAccent,
                ),

                /// Categories (بدل Search)
                SalomonBottomBarItem(
                  icon: const Icon(Icons.grid_view_rounded),
                  activeIcon: const Icon(Icons.grid_view_rounded),
                  title: const Text('Categories'),
                  selectedColor: Colors.blueAccent,
                ),

                /// Watch list
                SalomonBottomBarItem(
                  icon: const Icon(Icons.bookmark_border),
                  activeIcon: const Icon(Icons.bookmark),
                  title: const Text('Watch list'),
                  selectedColor: Colors.blueAccent,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
