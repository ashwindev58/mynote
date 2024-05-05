import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mynote/main.dart';

import 'homescreen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()),
          (route) => false);
    });
    return const Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Icon(
            Icons.note_add,
            size: 115,
            color: Colors.yellow,
          ),
        ));
  }
}
