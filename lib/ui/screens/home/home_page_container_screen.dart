import 'package:GID/core/ui_color_constant.dart';
import 'package:GID/core/ui_utils.dart';
import 'package:GID/ui/screens/circle/circle_screen.dart';
import 'package:GID/ui/screens/home/home_floating_action_button.dart';
import 'package:GID/ui/screens/menu/menu_screen.dart';
import 'package:GID/ui/screens/notes/notes_screen.dart';
import 'package:GID/ui/screens/settings/settings_screen.dart';
import 'package:flutter/material.dart';

class HomePageContainerScreen extends StatefulWidget {
  const HomePageContainerScreen({super.key});

  @override
  State<HomePageContainerScreen> createState() =>
      _HomePageContainerScreenState();
}

class _HomePageContainerScreenState extends State<HomePageContainerScreen> {
  int _currentIndex = 1;
  final tabs = [
    const MenuScreen(),
    const NotesScreen(),
    const CircleScreen(),
    const SettingsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: const HomeFloatingActionButton(),
        bottomNavigationBar: BottomAppBar(
          notchMargin: 12,
          clipBehavior: Clip.hardEdge,
          shape: const CircularNotchedRectangle(),
          child: BottomNavigationBar(
            //[?] I'm not able to padding correctly the Navbar. I want spacing
            //around NavBar, It would like a floating button. One more thing. I need
            // space in middle of navbar. But I Can't.

            type: BottomNavigationBarType.fixed,
            iconSize: 30,
            fixedColor: const Color.fromARGB(255, 1, 163, 6),
            unselectedItemColor: hexToColor(greyDark),
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                backgroundColor: getBrandColor(),
                label: 'Menu',
                icon: const Icon(Icons.category_outlined),
              ),
              BottomNavigationBarItem(
                backgroundColor: getBrandColor(),
                label: 'Notes',
                icon: const Icon(Icons.add_box_outlined),
              ),
              BottomNavigationBarItem(
                backgroundColor: getBrandColor(),
                label: 'Circle',
                icon: const Icon(Icons.people_outline_outlined),
              ),
              BottomNavigationBarItem(
                backgroundColor: getBrandColor(),
                label: 'Setting',
                icon: const Icon(Icons.settings_suggest_outlined),
              ),
            ],
          ),
        ),
        body: tabs[_currentIndex]);
  }
}
