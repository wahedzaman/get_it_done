import 'package:GID/ui/screens/auth/reset_password.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:GID/core/ui_color_constant.dart';
import 'package:GID/core/ui_constants.dart';
import 'package:GID/core/ui_utils.dart';
import 'package:GID/ui/screens/auth/registration_screen.dart';
import 'package:GID/ui/widgets/app_button.dart';
import 'package:GID/ui/widgets/app_edit_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                  text: TextSpan(
                text: "Welcome to\n",
                style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.black,),
                children: [
                  TextSpan(
                    text: "Get It Done",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: hexToColor(greyDark)),
                  )
                ]
              )),
              gap24,
              const AppEditText(hint: "Email"),
              gap24,
              const AppEditText(hint: "Password", isObscure: true),
              gap24,
              AppButton(
                  onTap: () {
                    debugPrint("login pressed");
                  },
                  title: "Get In"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Forgot password?", style: TextStyle(color: Colors.black),),
                  TextButton(
                    onPressed: () {
                      Get.to(() => const ResetPasswordScreen());
                  },
                    style: ButtonStyle(
                        overlayColor: MaterialStateProperty.all(Colors.transparent)
                    ),

                    child: const Text("Reset now"),),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Not a member?", style: TextStyle(color: Colors.black),),
                  TextButton(onPressed: () {
                    Get.to(() =>const RegistrationScreen());
                  },
                    style: ButtonStyle(
                      overlayColor: MaterialStateProperty.all(Colors.transparent)
                  ),

                    child: const Text("Join Now"),),
                ],
              ),
              gap64,
              const Center(child: Text("Or Sign in with")),
              gap24,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    flex: 1,
                    child: AppButton(
                      onTap: () {
                        debugPrint("Sign in with Facebook");
                      },
                      title: "Facebook",
                    ),
                  ),
                  gap10,
                  Expanded(
                    flex: 1,
                    child: AppButton(
                      onTap: () {
                        debugPrint("Sign in with google");
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
