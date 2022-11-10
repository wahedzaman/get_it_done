import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:GID/core/ui_constants.dart';
import 'package:GID/ui/screens/auth/login_screen.dart';
import 'package:GID/ui/widgets/app_button.dart';
import 'package:GID/ui/widgets/app_edit_text.dart';

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
              gap24,
              const AppEditText(hint: "Full name"),
              gap24,
              const AppEditText(hint: "Email"),
              gap24,
              const AppEditText(hint: "Password", isObscure: true),
              gap24,
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
                      Get.to(() => const LoginScreen());
                    },
                    style: ButtonStyle(
                        overlayColor:
                            MaterialStateProperty.all(Colors.transparent)),
                    child: const Text("Sign in"),
                  ),
                ],
              ),
              gap64,
              const Center(child: Text("Or Sign up with")),
              gap24,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    flex: 1,
                    child: AppButton(
                      onTap: () {
                        debugPrint("Sign up with Facebook");
                      },
                      title: "Facebook",
                    ),
                  ),
                  gap10,
                  Expanded(
                    flex: 1,
                    child: AppButton(
                      onTap: () {
                        debugPrint("Sign up with google");
                      },
                      title: "Google",
                      buttonImage: "assets/icons/google.png",
                      whiteButtton: true,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
