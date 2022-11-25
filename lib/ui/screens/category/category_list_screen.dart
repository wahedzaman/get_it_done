import 'package:GID/core/ui_color_constant.dart';
import 'package:GID/core/ui_constants.dart';
import 'package:GID/ui/screens/category/category_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CategoryListScreen extends StatelessWidget {
  const CategoryListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: const Text(
          'GID MENU',
          style: TextStyle(letterSpacing: 5),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 40),
            child: Text(
              'CATEGORY',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 24, 12, 0),
            child: GridView(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 16,
                crossAxisSpacing: 5,
              ),
              children: const [
                CategoryListItem(icon: Icons.home_filled, text: 'Home'),
                CategoryListItem(icon: Icons.data_object, text: 'Code'),
                CategoryListItem(
                    icon: Icons.offline_bolt_rounded, text: 'Skill'),
                CategoryListItem(icon: Icons.person, text: 'Personal'),
                CategoryListItem(icon: Icons.library_books, text: 'Study'),
                CategoryListItem(
                    icon: Icons.account_balance_wallet, text: 'Account'),
                CategoryListItem(icon: Icons.health_and_safety, text: 'Health'),
                CategoryListItem(icon: Icons.engineering, text: 'Skill'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
