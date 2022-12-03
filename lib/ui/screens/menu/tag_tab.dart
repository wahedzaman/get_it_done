import 'package:GID/core/ui_constants.dart';
import 'package:GID/ui/screens/menu/tag_tap_button.dart';
import 'package:flutter/material.dart';

class TagTab extends StatelessWidget {
  const TagTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return Column(
                  children: const [
                    TagTabButton(bgColor: Colors.orange, text: 'Crucial'),
                    TagTabButton(bgColor: Colors.redAccent, text: 'Emergency'),
                    TagTabButton(
                        bgColor: Color.fromARGB(255, 59, 252, 255),
                        text: 'Tech News'),
                    TagTabButton(bgColor: Colors.limeAccent, text: 'Pin'),
                    TagTabButton(
                        bgColor: Color.fromARGB(255, 96, 255, 125),
                        text: 'Islam'),
                    TagTabButton(
                        bgColor: Color.fromARGB(255, 218, 125, 255),
                        text: 'Wild'),
                  ],
                );
              }),
        ),
      ],
    );
  }
}
