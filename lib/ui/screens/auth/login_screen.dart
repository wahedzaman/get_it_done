import 'package:GID/core/ui_color_constant.dart';
import 'package:GID/core/ui_constants.dart';
import 'package:GID/core/ui_utils.dart';
import 'package:GID/ui/widgets/app_button.dart';
import 'package:GID/ui/widgets/app_edit_text.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Welcome to",
              style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
            ),
            Text("Get It Done",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: hexToColor(greyDark))),
            const AppEditText(hint: "Email"),
            const AppEditText(hint: "Password", isObscure: true),
            AppButton(
                onTap: () {
                  debugPrint("login pressed");
                },
                title: "Get In"),
            Center(
              child: TextButton(
                onPressed: () {
                  debugPrint("goto registration screen");
                },
                child: const Text("Not a member? Join Now"),
              ),
            ),
            divider,
            const Center(child: Text("Or Sign in with")),
            AppButton(
                onTap: () {
                  debugPrint("google oauth");
                },
                title: "Google",
                whiteButtton: true),
          ],
        ),
      ),
    );
  }
}
