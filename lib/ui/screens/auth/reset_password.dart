import 'package:GID/core/ui_constants.dart';
import 'package:GID/ui/widgets/app_button.dart';
import 'package:GID/ui/widgets/app_edit_text.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
        ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: padding24,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            gap48,
            gap48,
            const Text(
                "Reset password",
                 style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)
            ),
            const Text(
                "Please enter your email address\nto send a reset request",
                style: TextStyle(fontSize: 16)
            ),
            const AppEditText(
              hint: "Email",
            ),
            gap48,
            gap48,
            gap48,
            AppButton(
                onTap: (){},
                title: "Send new password"
            ),
           AppButton(
               onTap: (){},
               title: "Cancel",
               whiteButtton: true,
           )
          ],
        ),
      ),
    );
  }
}
