// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  Function onTap;
  String title;
  bool whiteButtton;
  double width;

  AppButton({
    Key? key,
    required this.onTap,
    required this.title,
    this.whiteButtton = false,
    this.width = double.infinity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60,
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
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                    color: whiteButtton ? Colors.black : Colors.white,
                    fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
