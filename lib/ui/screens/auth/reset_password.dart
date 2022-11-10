import 'package:GID/core/ui_color_constant.dart';
import 'package:GID/core/ui_constants.dart';
import 'package:GID/core/ui_utils.dart';
import 'package:GID/ui/widgets/app_button.dart';
import 'package:flutter/material.dart';

import '../../widgets/app_edit_text.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          automaticallyImplyLeading: true,
        ),
        body: Container(
          padding: padding24,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              gap64,
              const Text(
                "Reset password",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              gap12,
              Text(
                "Please enter your email address \nto request a password reset",
                style: TextStyle(fontSize: 18.0, color: hexToColor(greyDark)),
              ),
              gap24,
              const AppEditText(hint: "Email"),
              const Expanded(child: SizedBox()),
              AppButton(
                onTap: () {
                  debugPrint("Send new password");
                },
                title: "Send new password",
              ),
              gap12,
              AppButton(
                whiteButtton: true,
                onTap: () {
                  debugPrint("Cancel");
                },
                title: "Cancel",
              )
            ],
          ),
        ));
  }
}
