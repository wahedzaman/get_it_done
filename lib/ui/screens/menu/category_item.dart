import 'package:GID/core/ui_color_constant.dart';
import 'package:GID/core/ui_constants.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final IconData icon;
  final String text;
  const CategoryItem({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            shadowColor: getBrandColor(),
            elevation: 10,
            padding: padding26,
            backgroundColor: Colors.white,
            side: const BorderSide(
                width: 1.5, color: Color.fromARGB(255, 31, 187, 46)),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          onPressed: () {},
          child: Icon(
            icon,
            size: 40,
            color: const Color(0xFFA2DEA8),
          ),
        ),
        gap10,
        Text(text,
            style: const TextStyle(
              color: Color.fromARGB(255, 89, 201, 100),
              wordSpacing: 5.55,
              letterSpacing: 2.00,
            )),
      ],
    );
  }
}
