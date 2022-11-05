// ignore_for_file: must_be_immutable

import 'package:GID/core/ui_constants.dart';
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
  bool hidePassword = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: paddingH12,
      width: double.infinity,
      height: 70,
      decoration: BoxDecoration(
        color: getBackgroundColor(),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: TextFormField(
          obscureText: (widget.isObscure && hidePassword),
          maxLines: 1,
          decoration: InputDecoration(
              suffixIcon: widget.isObscure
                  ? Container(
                      child: (GestureDetector(
                        onTap: () {
                          setState(() {
                            hidePassword = !hidePassword;
                          });
                        },
                        child: Icon(hidePassword
                            ? Icons.visibility
                            : Icons.visibility_off),
                      )),
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
