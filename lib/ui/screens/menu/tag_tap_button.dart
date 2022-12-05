import 'package:GID/core/ui_color_constant.dart';
import 'package:GID/core/ui_constants.dart';
import 'package:GID/core/ui_utils.dart';
import 'package:flutter/material.dart';

class TagTabButton extends StatelessWidget {
  final Color bgColor;
  final String text;
  const TagTabButton({
    Key? key,
    required this.bgColor,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 12, 50, 0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black,
          backgroundColor: bgColor.withAlpha(200),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.horizontal(
              right: Radius.elliptical(360, 360),
              left: Radius.elliptical(150, 150),
            ),
          ),
        ),
        onPressed: () {},
        child: Row(
          children: [
            Icon(
              Icons.sell_outlined,
              color: hexToColor(greyDark),
            ),
            gap14,
            Text(text)
          ],
        ),
      ),
    );
  }
}
