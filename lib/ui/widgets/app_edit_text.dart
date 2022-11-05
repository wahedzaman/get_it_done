// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'package:GID/core/ui_color_constant.dart';

class AppEditText extends StatefulWidget {
  final String? hint;
  final bool isObscure;

  const AppEditText({
    Key? key,
    this.hint,
    this.isObscure = false,
  }) : super(key: key);

  @override
  State<AppEditText> createState() => _AppEditTextState();
}

class _AppEditTextState extends State<AppEditText> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: getBackgroundColor(),
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextFormField(
        obscureText: (widget.isObscure && showPassword),
        maxLines: 1,
        decoration: InputDecoration(
            suffixIcon: widget.isObscure
                ? (IconButton(
                    onPressed: () {
                      setState(() {
                        showPassword = !showPassword;
                      });
                    },
                    icon: Icon(
                        showPassword ? Icons.visibility : Icons.visibility_off),
                  ))
                : null,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 4, horizontal: 24),
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            hintText: "${widget.hint}"),
      ),
    );
  }
}
