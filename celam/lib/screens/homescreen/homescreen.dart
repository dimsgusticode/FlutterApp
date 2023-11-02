import 'package:celam/screens/account/app.dart';
import 'package:celam/screens/homescreen/dashboard.dart';
import 'package:celam/screens/topup/app.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _currentPages = 0;

  final List<Widget> _children = [
    Dashboard(),
    Topup(),
    Account(),
  ];

  void onTapped(int index){
    setState(() {
      _currentPages = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CELAM'),
      ),
      body: _children[_currentPages],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTapped,
        currentIndex: _currentPages,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            label: 'Topup'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Account'
          ),
        ],
      ),
    );
  }
}