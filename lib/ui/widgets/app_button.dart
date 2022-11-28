// ignore_for_file: must_be_immutable

import 'package:GID/core/ui_constants.dart';
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
        color: const Color.fromARGB(
            0, 69, 255, 7), //I just change this one for the testing
        child: InkWell(
          onTap: () {
            onTap();
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(
                    color: whiteButtton ? Colors.black : Colors.white,
                    fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
