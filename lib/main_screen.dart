import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var _currentTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Placeholder(),
      bottomNavigationBar: BottomAppBar(
          padding: EdgeInsets.zero,
          child: BottomNavigationBar(
            onTap: (index) {
              setState(() {
                _currentTab = index;
              });
            },
            currentIndex: _currentTab,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/icons/home.svg'),
                  activeIcon: SvgPicture.asset('assets/icons/home_active.svg'),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/icons/mood.svg'),
                  activeIcon: SvgPicture.asset('assets/icons/mood_active.svg'),
                  label: "Mood"),
            ],
          )),
    );
  }
}
