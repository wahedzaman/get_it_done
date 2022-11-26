import 'package:GID/ui/screens/category/category_list_item.dart';
import 'package:flutter/material.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
          CategoryListItem(icon: Icons.offline_bolt_rounded, text: 'Skill'),
          CategoryListItem(icon: Icons.person, text: 'Personal'),
          CategoryListItem(icon: Icons.auto_stories_rounded, text: 'Study'),
          CategoryListItem(icon: Icons.account_balance_wallet, text: 'Account'),
          CategoryListItem(icon: Icons.health_and_safety, text: 'Health'),
          CategoryListItem(icon: Icons.engineering, text: 'Skill'),
        ],
      ),
    );
  }
}
