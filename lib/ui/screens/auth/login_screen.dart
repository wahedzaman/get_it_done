import 'package:GID/core/ui_color_constant.dart';
import 'package:GID/core/ui_constants.dart';
import 'package:GID/core/ui_utils.dart';
import 'package:GID/ui/screens/auth/registration_screen.dart';
import 'package:GID/ui/screens/auth/reset_password_screen.dart';
import 'package:GID/ui/screens/home/home_page_container_screen.dart';
import 'package:GID/ui/widgets/app_button.dart';
import 'package:GID/ui/widgets/app_edit_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
                  Get.to(() => const HomePageContainerScreen());
                },
                title: "Get In"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Forgot password?'),
                TextButton(
                  onPressed: () {
                    Get.to(const ResetPasswordScreen());
                  },
                  child: const Text(' Reset now!'),
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
                  child: const Text(' Join Now'),
                ),
              ],
            ),
            divider,
            const Center(child: Text("Or Sign in with")),
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
      ),
    );
  }
}
