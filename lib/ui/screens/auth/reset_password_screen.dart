import 'package:GID/core/ui_color_constant.dart';
import 'package:GID/core/ui_constants.dart';
import 'package:GID/core/ui_utils.dart';
import 'package:GID/ui/screens/auth/login_screen.dart';
import 'package:GID/ui/widgets/app_button.dart';
import 'package:GID/ui/widgets/app_edit_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: getBackgroundColor(),
        elevation: 0,
        foregroundColor: Colors.black,
        automaticallyImplyLeading: true,
      ),
      body: Padding(
        padding: padding24,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(90),
              const Text(
                'Reset password',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 42,
                ),
              ),
              Text(
                'Please enter your email address to \nrequest a password reset',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: hexToColor(greyDark)),
              ),
              gap48,
              const AppEditText(hint: 'Email'),
              const Gap(260),
              AppButton(onTap: () {}, title: 'Confirm reset password'),
              gap18,
              AppButton(
                onTap: () {
                  Get.to(const LoginScreen());
                },
                title: 'Cancel',
                whiteButtton: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
