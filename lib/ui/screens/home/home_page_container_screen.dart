import 'package:GID/ui/screens/category/category_list_screen.dart';
import 'package:flutter/material.dart';

class HomePageContainerScreen extends StatelessWidget {
  const HomePageContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: const [
          CategoryListScreen(),
          Text('Todo'),
        ],
      ),
    );
  }
}
