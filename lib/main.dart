import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/setting_screen.dart';
import 'package:flutter_application_1/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: SettingScreens(),
    );
  }
}
