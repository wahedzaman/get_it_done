import 'package:GID/ui/screens/menu/category_item.dart';
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
        //[add] Need a controller for saving gridview state.
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 16,
          crossAxisSpacing: 5,
        ),
        children: const [
          CategoryItem(icon: Icons.home_filled, text: 'Home'),
          CategoryItem(icon: Icons.data_object, text: 'Code'),
          CategoryItem(icon: Icons.offline_bolt_rounded, text: 'Skill'),
          CategoryItem(icon: Icons.person, text: 'Personal'),
          CategoryItem(icon: Icons.auto_stories_rounded, text: 'Study'),
          CategoryItem(icon: Icons.account_balance_wallet, text: 'Account'),
          CategoryItem(icon: Icons.health_and_safety, text: 'Health'),
          CategoryItem(icon: Icons.engineering, text: 'Skill'),
          CategoryItem(icon: Icons.home_filled, text: 'Home'),
          CategoryItem(icon: Icons.data_object, text: 'Code'),
          CategoryItem(icon: Icons.offline_bolt_rounded, text: 'Skill'),
          CategoryItem(icon: Icons.person, text: 'Personal'),
          CategoryItem(icon: Icons.auto_stories_rounded, text: 'Study'),
          CategoryItem(icon: Icons.account_balance_wallet, text: 'Account'),
          CategoryItem(icon: Icons.health_and_safety, text: 'Health'),
          CategoryItem(icon: Icons.engineering, text: 'Skill'),
          CategoryItem(icon: Icons.home_filled, text: 'Home'),
          CategoryItem(icon: Icons.data_object, text: 'Code'),
          CategoryItem(icon: Icons.offline_bolt_rounded, text: 'Skill'),
          CategoryItem(icon: Icons.person, text: 'Personal'),
          CategoryItem(icon: Icons.auto_stories_rounded, text: 'Study'),
          CategoryItem(icon: Icons.account_balance_wallet, text: 'Account'),
          CategoryItem(icon: Icons.health_and_safety, text: 'Health'),
          CategoryItem(icon: Icons.engineering, text: 'Skill'),
          CategoryItem(icon: Icons.home_filled, text: 'Home'),
          CategoryItem(icon: Icons.data_object, text: 'Code'),
          CategoryItem(icon: Icons.offline_bolt_rounded, text: 'Skill'),
          CategoryItem(icon: Icons.person, text: 'Personal'),
          CategoryItem(icon: Icons.auto_stories_rounded, text: 'Study'),
          CategoryItem(icon: Icons.account_balance_wallet, text: 'Account'),
          CategoryItem(icon: Icons.health_and_safety, text: 'Health'),
          CategoryItem(icon: Icons.engineering, text: 'Skill'),
        ],
      ),
    );
  }
}
