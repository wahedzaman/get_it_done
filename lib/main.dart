import 'package:GID/core/ui_color_constant.dart';
import 'package:GID/ui/screens/auth/starting_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: getBackgroundColor(),
        primarySwatch: Colors.blue,
        fontFamily: 'Nunito',
      ),
      home: const StartingScreen(),
    );
  }
}
