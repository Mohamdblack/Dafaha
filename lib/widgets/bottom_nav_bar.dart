import 'package:dafaha/colors/colors.dart';
import 'package:dafaha/screens/add_post_screen.dart';
import 'package:dafaha/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 0;

  List screens = [
    const HomeScreen(),
    const AddPostScreen(),
    const Center(child: Text("search")),
    const Center(child: Text("profile")),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: NavigationBar(
        height: 80,
        elevation: 0,
        onDestinationSelected: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        indicatorColor: secondaryColor,
        selectedIndex: selectedIndex,
        destinations: const [
          NavigationDestination(icon: Icon(Iconsax.home), label: "Home"),
          NavigationDestination(icon: Icon(Iconsax.add_circle), label: "Add"),
          NavigationDestination(
              icon: Icon(Iconsax.search_favorite), label: "search"),
          NavigationDestination(
              icon: Icon(Iconsax.profile_circle), label: "profile"),
        ],
      ),
    );
  }
}
