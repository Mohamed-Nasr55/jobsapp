import 'package:flutter/material.dart';
import 'package:jobsapp/features/home/home_screen.dart';
import 'package:jobsapp/features/messages/messages_screen.dart';
import 'package:jobsapp/features/profile/profile_screen.dart';
import 'package:jobsapp/features/saved/saved_screen.dart';

class CustomBottomNavBarScreen extends StatefulWidget {
  const CustomBottomNavBarScreen({Key? key}) : super(key: key);

  @override
  _BottomNavBarWidgetState createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<CustomBottomNavBarScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    MessagesScreen(),
    SavedScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        
        backgroundColor: Colors.grey.shade300,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Messages'),
          BottomNavigationBarItem(
            icon: Icon(Icons.save_rounded),
            label: 'Saved',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
