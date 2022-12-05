import 'package:flutter/material.dart';

class SettingListButton extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String text;
  final Color textColor;
  const SettingListButton({
    Key? key,
    required this.icon,
    required this.iconColor,
    required this.text,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: ListTile(
        iconColor: iconColor,
        textColor: textColor,
        leading: Icon(
          icon,
          size: 35.0,
        ),
        title: Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        trailing: const Icon(Icons.keyboard_arrow_right_rounded),
      ),
    );
  }
}
