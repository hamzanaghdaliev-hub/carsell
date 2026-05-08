import 'package:carsell/authentication/login_screen.dart';
import 'package:carsell/authentication/sigh_up.dart';
import 'package:carsell/home.dart';
import 'package:carsell/my_car_page.dart';
import 'package:carsell/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:carsell/authentication/login_screen.dart';
import 'package:carsell/authentication/sigh_up.dart';

/// Flutter code sample for [BottomNavigationBar].



class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({super.key});

  @override
  State<BottomBarScreen> createState() =>
      _BottomBarScreenState();
}

class _BottomBarScreenState
    extends State<BottomBarScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );
  static const List<Widget> _widgetOptions = <Widget>[
     Home(),
    MyCarPage(),
    SighUp(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.car_rental),
            label: 'My Cars',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}