import 'package:flutter/material.dart';
import 'package:lakas/screens/overlays/calendar.dart';
import 'package:lakas/screens/overlays/routine.dart';
import 'package:lakas/screens/overlays/settings.dart';
import 'package:lakas/screens/overlays/this_day.dart';
import 'package:lakas/shared/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, this.activeScreen});

  final Widget? activeScreen;
  static const routeName = '/home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _active = 1;

  final _screens = [
    const ThisDayScreen(),
    const RoutineScreen(),
    const CalendarScreen(),
    const SettingsScreen(),
  ];

  void setActiveScreen(index) {
    setState(() {
      _active = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_active],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor:
              _active == 0 || _active == 3 ? AppColor.blue[3] : Colors.white,
          currentIndex: _active,
          elevation: 0,
          showUnselectedLabels: true,
          onTap: (index) => setActiveScreen(index),
          items: [
            BottomNavigationBarItem(
              backgroundColor: AppColor.blue[8],
              activeIcon: const Icon(Icons.home),
              icon: const Padding(
                padding: EdgeInsets.symmetric(vertical: 4.0),
                child: Icon(Icons.home_outlined),
              ),
              label: 'Dashboard',
            ),
            const BottomNavigationBarItem(
                backgroundColor: Colors.red,
                activeIcon: Icon(Icons.route),
                icon: Padding(
                  padding: EdgeInsets.symmetric(vertical: 4.0),
                  child: Icon(Icons.route_outlined),
                ),
                label: 'Routines'),
            BottomNavigationBarItem(
                backgroundColor: Colors.amber[900],
                activeIcon: const Icon(Icons.calendar_today),
                icon: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 4.0),
                  child: Icon(Icons.calendar_today_outlined),
                ),
                label: 'Calendar'),
            const BottomNavigationBarItem(
                backgroundColor: Colors.green,
                activeIcon: Icon(Icons.settings),
                icon: Padding(
                  padding: EdgeInsets.symmetric(vertical: 4.0),
                  child: Icon(Icons.settings_outlined),
                ),
                label: 'Settings'),
          ]),
    );
  }
}
