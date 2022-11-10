import 'package:GID/core/ui_color_constant.dart';
import 'package:GID/core/ui_constants.dart';
import 'package:GID/core/ui_utils.dart';
import 'package:GID/ui/screens/auth/registration_screen.dart';
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
              const SizedBox(height: 30),
              const AppEditText(hint: "Email"),
              const SizedBox(height: 30),
              const AppEditText(hint: "Password", isObscure: true),
              const SizedBox(height: 30),
              AppButton(
                  onTap: () {
                    debugPrint("login pressed");
                  },
                  title: "Get In"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Not a member?", style: TextStyle(color: Colors.black),),
                  TextButton(onPressed: () {
                    Get.to(const RegistrationScreen());
                  },
                    style: ButtonStyle(
                      overlayColor: MaterialStateProperty.all(Colors.transparent)
                  ),

                    child: const Text("Join Now"),),
                ],
              ),
              const SizedBox(height: 60),
              const Center(child: Text("Or Sign in with")),
              const SizedBox(height: 30),
              AppButton(
                  onTap: () {
                    debugPrint("google oauth");
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
