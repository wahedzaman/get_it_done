import 'package:GID/ui/screens/menu/category_tab.dart';
import 'package:GID/ui/screens/menu/tag_tab.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: const Text(
            'GID MENU',
            style: TextStyle(letterSpacing: 5),
          ),
        ),
        body: Column(
          children: [
            TabBar(
              indicatorColor: const Color.fromARGB(255, 31, 187, 46),
              tabs: [
                const Tab(
                  child: Text(
                    'CATEGORY',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                Tab(
                  child: Row(
                    // I want to hear bad report for using this row here from Wahed vaya
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.tag_rounded,
                        color: Colors.black,
                      ),
                      Text(
                        'TAG',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  CategoryTab(),
                  TagTab(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
