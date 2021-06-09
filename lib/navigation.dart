import 'package:flutter/material.dart';
import 'package:legal_cover/constants.dart';
import 'package:legal_cover/screens/home_screen.dart';
import 'package:legal_cover/screens/find_me_screen.dart';
import 'package:legal_cover/screens/emergency_screen.dart';
import 'package:legal_cover/screens/profile_screen.dart';

class Navigation extends StatefulWidget {
  static const String id = 'navigation_screen';

  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _currentIndex = 0;

  List<Widget> _screenOptions = [
    HomeScreen(),
    FindMeScreen(),
    EmergencyScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: [
          Center(
            child: _screenOptions.elementAt(_currentIndex),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (value) {
          // Respond to item press.
          setState(() => _currentIndex = value);
        },
        iconSize: 30,
        // Colouring
        selectedItemColor: legalCoverYellow,
        unselectedItemColor: legalCoverBlack,
        backgroundColor: surfaceWhite,
        // Labels visibility
        showSelectedLabels: false,
        showUnselectedLabels: false,
        // Navigation Icons
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.location_pin,
            ),
            label: 'Find Me',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.warning_rounded,
            ),
            label: 'Emergency',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
