import 'package:flutter/material.dart';
import 'package:flutter_application_2_task/screens/home_screen.dart';
import 'package:flutter_application_2_task/screens/login_screen.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
