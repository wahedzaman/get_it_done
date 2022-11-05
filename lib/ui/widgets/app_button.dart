// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  Function onTap;
  String title;
  bool whiteButtton;

  AppButton({
    Key? key,
    required this.onTap,
    required this.title,
    this.whiteButtton = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: whiteButtton ? Colors.white : Colors.black,
          borderRadius: BorderRadius.circular(12)),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            onTap();
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            child: Text(
              title,
              style: TextStyle(
                  color: whiteButtton ? Colors.black : Colors.white,
                  fontSize: 25),
            ),
          ),
        ),
      ),
    );
  }
}
