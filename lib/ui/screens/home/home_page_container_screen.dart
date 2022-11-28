import 'package:GID/core/ui_color_constant.dart';
import 'package:GID/core/ui_utils.dart';
import 'package:GID/ui/screens/auth/starting_screen.dart';
import 'package:GID/ui/screens/home/home_floating_action_button.dart';
import 'package:GID/ui/screens/menu/menu_screen.dart';
import 'package:GID/ui/screens/notes/notes_screen.dart';
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
    const StartingScreen(),
    const StartingScreen(),
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

              //There a bad code
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
        // body: TabBarView(
        //     controller: TabController(length: 2, vsync: this),
        //     children: [
        //       //tabs[_currentIndex],
        //       const CategoryListScreen(),
        //       const HomeNoteScreen(),
        //       tabs[_currentIndex],
        //     ]));
        body: tabs[_currentIndex]);
  }
}
