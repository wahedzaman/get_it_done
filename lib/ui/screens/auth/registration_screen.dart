import 'package:GID/core/ui_color_constant.dart';
import 'package:GID/core/ui_constants.dart';
import 'package:GID/ui/widgets/app_button.dart';
import 'package:GID/ui/widgets/app_edit_text.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: getBackgroundColor(),
      appBar: AppBar(
        backgroundColor: getBackgroundColor(),
        elevation: 0,
        foregroundColor: Colors.black,
        automaticallyImplyLeading: true,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: padding24,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Create a new \nAccount',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            // Text(
            //   'Get It Done',
            //   style: TextStyle(fontWeight: FontWeight.w900),
            // ),
            const AppEditText(hint: 'Full name'),
            const AppEditText(hint: 'Email'),
            const AppEditText(
              hint: 'Password',
              isObscure: true,
            ),
            AppButton(onTap: () {}, title: 'Register Now'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Already have an account?'),
                TextButton(
                  onPressed: () {},
                  child: const Text(' Sign in'),
                ),
              ],
            ),
            divider,
            const Center(
              child: Text(
                'Or Sign up with',
              ),
            ),
            Row(
              children: [
                Expanded(
                    flex: 1, child: AppButton(onTap: () {}, title: 'facebook')),
                gap10,
                Expanded(
                  flex: 1,
                  child: AppButton(
                    whiteButtton: true,
                    onTap: () {},
                    title: 'Google',
                    icon: const AssetImage('assets/icons/google.png'),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
