import 'package:GID/core/ui_color_constant.dart';
import 'package:GID/ui/screens/category/category_list_screen.dart';
import 'package:flutter/material.dart';

class HomePageContainerScreen extends StatelessWidget {
  const HomePageContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PageController pageController =
        PageController(initialPage: 1, keepPage: true);
    return Scaffold(
      backgroundColor: getBackgroundColor(),
      body: SafeArea(
        child: PageView(
          controller: pageController,
          children: const [
            CategoryListScreen(),
            Text(
              "Todo Page",
              style: TextStyle(fontSize: 30),
            ),
            Text(
              "Cirle",
              style: TextStyle(fontSize: 30),
            ),
            Text(
              "Settings",
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
