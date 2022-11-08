import 'package:GID/core/ui_constants.dart';
import 'package:GID/ui/screens/auth/login_screen.dart';
import 'package:GID/ui/widgets/app_button.dart';
import 'package:GID/ui/widgets/app_edit_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
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
            const Text("Create a new account",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
            const AppEditText(hint: "Full name",),
            const AppEditText(hint: "Email",),
            const AppEditText(hint: "Password", isObscure: true,),
            AppButton(
              onTap: (){},
              title: "Register Now",
            ),
            TextButton(onPressed: (){
              Get.to(const LoginScreen());
              debugPrint("go to sign in page");
            },
                child: const Center(child: Text("Already have an account? Sign in"))
            ),
            divider,
            const Center(child: Text("Or Sign up with")),
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
