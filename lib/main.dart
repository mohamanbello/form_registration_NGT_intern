import 'package:flutter/material.dart';
import 'package:registration_form/pages/auth_page.dart';
import 'package:registration_form/pages/signup.dart';
import 'package:registration_form/theme/dark_theme.dart';
import 'package:registration_form/theme/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,

      //comment it for light Mode!
      darkTheme: darkTheme,
      home: const AuthPage(),
      routes: {
        '/signup': (context) => const Signup(),
      },
    );
  }
}
