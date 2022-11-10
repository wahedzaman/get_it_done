import 'package:GID/ui/screens/auth/login_screen.dart';
import 'package:GID/ui/screens/auth/reset_password.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../core/ui_color_constant.dart';
import '../../../core/ui_constants.dart';
import '../../../core/ui_utils.dart';
import '../../widgets/app_button.dart';
import '../../widgets/app_edit_text.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                  text: const TextSpan(
                      text: "Create a new\n",
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      children: [
                    TextSpan(
                      text: "Account",
                      style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    )
                  ])),
              const SizedBox(height: 30),
              const AppEditText(hint: "Full name"),
              const SizedBox(height: 30),
              const AppEditText(hint: "Email"),
              const SizedBox(height: 30),
              const AppEditText(hint: "Password", isObscure: true),
              const SizedBox(height: 30),
              AppButton(
                  onTap: () {
                    debugPrint("login pressed");
                  },
                  title: "Register now"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account?",
                    style: TextStyle(color: Colors.black),
                  ),
                  TextButton(
                    onPressed: () {
                      Get.to(const LoginScreen());
                    },
                    style: ButtonStyle(
                        overlayColor:
                            MaterialStateProperty.all(Colors.transparent)),
                    child: const Text("Sign in"),
                  ),
                ],
              ),
              const SizedBox(height: 60),
              const Center(child: Text("Or Sign in with")),
              const SizedBox(height: 30),
              AppButton(
                onTap: () {
                  Get.to(const ResetPasswordScreen());
                },
                title: "Google",
                whiteButtton: true,
                buttonImage: "assets/icons/google.png",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
