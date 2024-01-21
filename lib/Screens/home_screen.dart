import 'package:flutter/material.dart';
import 'package:practise_ui/Screens/detail_screen.dart';
import 'package:practise_ui/Screens/history_screen.dart';
import 'package:practise_ui/Screens/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedTab = 0;

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  final List _pages = [
    const DetailScreen(),
    const Text('assignment'),
    const HistoryScreen(),
    const ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedTab,
          selectedItemColor: Colors.teal,
          unselectedItemColor: Colors.grey,
          iconSize: 20,
          onTap: (index) => _changeTab(index),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'home',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.assessment), label: 'Assignment'),
            BottomNavigationBarItem(icon: Icon(Icons.feed), label: 'feed'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
          ]),
      body: _pages[_selectedTab],
    );
  }
}
