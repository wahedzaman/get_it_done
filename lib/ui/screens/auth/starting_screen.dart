import 'package:GID/core/ui_color_constant.dart';
import 'package:GID/core/ui_constants.dart';
import 'package:GID/ui/screens/auth/login_screen.dart';
import 'package:GID/ui/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StartingScreen extends StatelessWidget {
  const StartingScreen({super.key});

  _getMainColumnUpperBody() {
    return Expanded(
      flex: 4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.note_add,
            size: 150,
            color: getBrandColor(),
          ),
          const Text(
            "GID",
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ),
          const Text("The Ultimate Todo App",
              style: TextStyle(
                  fontSize: 20, letterSpacing: 4, fontWeight: FontWeight.w700)),
        ],
      ),
    );
  }

  _getMainColumnLowerBody() {
    return Expanded(
      flex: 3,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: getBrandColor(),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            const Text(
              "Welcome",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              "The most advanced and feature proof task management app. Get It Done is the only ToDo app you will ever need!",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 40),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    flex: 1,
                    child: AppButton(
                        onTap: () {
                          Get.to(const LoginScreen());
                        },
                        title: "Sign In"),
                  ),
                  gap10,
                  Expanded(
                    flex: 1,
                    child: AppButton(
                      onTap: () {
                        debugPrint("tapped");
                      },
                      title: "Sign Up",
                      whiteButtton: true,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: getBackgroundColor(),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: Get.size.height,
          child: Column(
            children: [
              _getMainColumnUpperBody(),
              _getMainColumnLowerBody(),
            ],
          ),
        ),
      ),
    );
  }
}
