import 'package:GID/core/ui_constants.dart';
import 'package:GID/ui/screens/settings/brand_logo_widg.dart';
import 'package:GID/ui/screens/settings/setting_list_button.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const BrandLogoWidg(),
          gap24,
          Card(
            elevation: 0,
            margin: const EdgeInsets.all(10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: const [
                SettingListButton(
                  icon: Icons.settings_brightness_rounded,
                  iconColor: Color.fromARGB(215, 19, 100, 193),
                  text: 'Appearance',
                  textColor: Color.fromARGB(255, 19, 100, 193),
                ),
                SettingListButton(
                  icon: Icons.g_translate_rounded,
                  iconColor: Color.fromARGB(215, 19, 100, 193),
                  text: 'Language',
                  textColor: Color.fromARGB(255, 19, 100, 193),
                ),
              ],
            ),
          ),
          Card(
            elevation: 0,
            margin: const EdgeInsets.all(10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: const [
                SettingListButton(
                  icon: Icons.archive_rounded,
                  iconColor: Color.fromARGB(188, 161, 14, 161),
                  text: 'Archive',
                  textColor: Color.fromARGB(188, 161, 14, 161),
                ),
                SettingListButton(
                  icon: Icons.replay_circle_filled_rounded,
                  iconColor: Color.fromARGB(188, 161, 14, 161),
                  text: 'Trash Can',
                  textColor: Color.fromARGB(188, 161, 14, 161),
                ),
                Divider(
                  indent: 40,
                  endIndent: 40,
                ),
                SettingListButton(
                  icon: Icons.feedback_rounded,
                  iconColor: Color.fromARGB(188, 161, 14, 161),
                  text: 'Feedback',
                  textColor: Color.fromARGB(188, 161, 14, 161),
                ),
                SettingListButton(
                  icon: Icons.privacy_tip_rounded,
                  iconColor: Color.fromARGB(188, 161, 14, 161),
                  text: 'Privacy Policy',
                  textColor: Color.fromARGB(188, 161, 14, 161),
                ),
              ],
            ),
          ),
          gap24,
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: const Color.fromARGB(201, 255, 255, 255),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: const BorderSide(
                  color: Color.fromARGB(202, 230, 158, 153),
                  width: 0.4,
                ),
              ),
            ),
            onPressed: () {
              //[add] show Alert Dialog here.
            },
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 140),
              child: const Text(
                'Sign Out',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 216, 39, 39),
                  fontSize: 20,
                ),
              ),
            ),
          ),
          gap10,
          const Text(
            'Version: 1.0.1',
            style: TextStyle(
              color: Color.fromARGB(255, 137, 132, 132),
              fontSize: 12,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
