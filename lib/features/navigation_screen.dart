import 'package:flutter/material.dart';
import 'package:jobsapp/features/custom_bottom_nav_bar_screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBottomNavBarScreen(),
    );
  }
}
