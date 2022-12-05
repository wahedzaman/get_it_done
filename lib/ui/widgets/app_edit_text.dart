// ignore_for_file: must_be_immutable

import 'package:GID/core/ui_constants.dart';
import 'package:flutter/material.dart';

import 'package:GID/core/ui_color_constant.dart';

class AppEditText extends StatefulWidget {
  final String? hint;
  final bool isObscure;
  final double height;
  final int maxLines;

  const AppEditText({
    Key? key,
    this.hint,
    this.isObscure = false,
    this.height = 70,
    this.maxLines = 1,
  }) : super(key: key);

  @override
  State<AppEditText> createState() => _AppEditTextState();
}

class _AppEditTextState extends State<AppEditText> {
  bool hidePassword = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: paddingH12,
      width: double.infinity,
      height: widget.height,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: TextFormField(
          maxLines: widget.maxLines,
          obscureText: (widget.isObscure && hidePassword),
          decoration: InputDecoration(
              suffixIcon: widget.isObscure
                  ? Container(
                      child: (GestureDetector(
                          onTap: () {
                            setState(() {
                              hidePassword = !hidePassword;
                            });
                          },
                          child: Icon(
                              hidePassword
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: const Color.fromARGB(255, 69, 167, 79)))),
                    )
                  : null,
              suffixIconConstraints: const BoxConstraints(
                minWidth: 2,
                minHeight: 2,
              ),
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              hintText: "${widget.hint}"),
        ),
      ),
    );
  }
}
