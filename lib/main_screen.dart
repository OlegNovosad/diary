import 'package:diary/add_memories_screen.dart';
import 'package:diary/diary_screen.dart';
import 'package:diary/home_screen.dart';
import 'package:diary/mood_screen.dart';
import 'package:diary/settings_screen.dart';
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
      extendBody: true,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Row(
                children: [
                  SvgPicture.asset('assets/images/logo.svg', height: 20),
                  const Spacer(),
                  const Icon(Icons.notifications, color: Colors.black)
                ],
              ),
              const SizedBox(height: 24),
              _screen()
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (_) => AddMemoriesScreen()),
          );
        },
        child: Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFF1DE15C), Color(0xFFEEFF20)]),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                      color: const Color(0xFF3544CF).withOpacity(0.25),
                      blurRadius: 30,
                      offset: const Offset(0, 12))
                ]),
            child: const Icon(
              Icons.add,
              color: Colors.black,
              size: 32,
            )),
      ),
      bottomNavigationBar: BottomAppBar(
          padding: EdgeInsets.zero,
          shape: const CircularNotchedRectangle(),
          notchMargin: 8,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
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
              BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/icons/diary.svg'),
                  activeIcon: SvgPicture.asset('assets/icons/diary_active.svg'),
                  label: "Diary"),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/icons/settings.svg'),
                  activeIcon:
                      SvgPicture.asset('assets/icons/settings_active.svg'),
                  label: "Settings"),
            ],
          )),
    );
  }

  Widget _screen() {
    switch (_currentTab) {
      case 0:
        return const HomeScreen();
      case 1:
        return const MoodScreen();
      case 2:
        return const DiaryScreen();
      case 3:
        return const SettingsScreen();
      default:
        throw UnimplementedError("$_currentTab does not exist");
    }
  }
}
