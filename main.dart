import 'package:flutter/material.dart';

import 'screens/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        title: 'MY Note',
        theme: ThemeData.dark().copyWith(
        primaryColor: Colors.yellow[800], // Yellow as accent color
        inputDecorationTheme: InputDecorationTheme(
          labelStyle: TextStyle(color: Colors.yellow),
          hintStyle: TextStyle(color: Colors.yellow.withOpacity(0.5)),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.yellow, width: 2.0),
          ),
        ), colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.yellow),
      ),
        debugShowCheckedModeBanner: false,
        home: const SplashScreen(),
      ),
    );
  }
}
