import 'package:GID/core/ui_color_constant.dart';
import 'package:GID/core/ui_constants.dart';
import 'package:GID/core/ui_utils.dart';
import 'package:GID/ui/screens/auth/registration_screen.dart';
import 'package:GID/ui/screens/auth/reset_password_screen.dart';
import 'package:GID/ui/screens/home/home_nav_bar_screen.dart';
import 'package:GID/ui/widgets/app_button.dart';
import 'package:GID/ui/widgets/app_edit_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

_getMainColumnUpperBody() {
  return Expanded(
    flex: 4,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Welcome to",
          style: TextStyle(
            fontSize: 45,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text("Get It Done",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: hexToColor(greyDark))),
        gap36,
        const AppEditText(hint: "Email"),
        gap18,
        const AppEditText(hint: "Password", isObscure: true),
        gap36,
        AppButton(
            onTap: () {
              debugPrint("login pressed");
              Get.to(() => const HomeNavbarScreen());
            },
            title: "Get In"),
      ],
    ),
  );
}

_getMainColumnLowerBody() {
  return Expanded(
    flex: 3,
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Forgot password?'),
            TextButton(
              onPressed: () {
                Get.to(const ResetPasswordScreen());
              },
              child: const Text(
                ' Reset now!',
                style: TextStyle(color: Color.fromARGB(255, 69, 167, 79)),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Not a member?'),
            TextButton(
              onPressed: () {
                Get.to(const RegistrationScreen());
              },
              child: const Text(
                ' Join Now',
                style: TextStyle(color: Color.fromARGB(255, 69, 167, 79)),
              ),
            ),
          ],
        ),
        gap36,
        divider,
        gap36,
        const Center(child: Text("Or Sign in with")),
        gap24,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: AppButton(
                onTap: () {
                  debugPrint("google oauth");
                },
                title: "Google",
                whiteButtton: true,
              ),
            ),
            gap10,
            Expanded(
              child: AppButton(
                onTap: () {},
                title: 'facebook',
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: padding24,
        child: Column(
          children: [
            _getMainColumnUpperBody(),
            gap48,
            _getMainColumnLowerBody(),
          ],
        ),
      ),
    );
  }
}
