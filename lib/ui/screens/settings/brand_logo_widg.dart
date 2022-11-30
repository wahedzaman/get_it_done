import 'package:GID/core/ui_color_constant.dart';
import 'package:GID/core/ui_utils.dart';
import 'package:flutter/material.dart';

class BrandLogoWidg extends StatelessWidget {
  const BrandLogoWidg({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(200, 70, 110, 0),
          child: Icon(
            Icons.note_add,
            size: 100,
            color: getBrandColor(),
          ),
        ),
        Positioned(
          top: 95.0,
          right: 196,
          child: Container(
            padding: const EdgeInsets.all(5),
            width: 80,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: const Color(0xFFffcc00),
            ),
            child: Text(
              'PREMIUM',
              style: TextStyle(
                fontSize: 12,
                color: hexToColor(greyDark),
                fontWeight: FontWeight.w100,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        const Positioned(
          top: 126,
          right: 196,
          child: Text(
            'GET IT DONE',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20,
            ),
          ),
        ),
        const Positioned(
          top: 148,
          right: 196,
          child: Text(
            'THE ULTIMATE TODO',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w100,
              debugLabel: 'debugLabel',
              wordSpacing: 1.2,
              letterSpacing: 1.5,
              color: Color.fromARGB(255, 15, 121, 18),
            ),
          ),
        )
      ],
    );
  }
}
