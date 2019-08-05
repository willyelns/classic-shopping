import 'package:flutter/material.dart';

const brightness = Brightness.light;
const primaryColor = Color(0xFF00C569);
const lightColor = Color(0xFFFFFFFF);
const backgroundColor = Color(0xFFF5F5F5);

ThemeData lightTheme() {
  return ThemeData(
    primaryColor: primaryColor,
    accentColor: Colors.white,
    brightness: brightness,
    textTheme: TextTheme(
        // body1: TextStyle(color: Colors.red),
        // display4: TextStyle(),
        // headline: TextStyle(fontSize: 30),
        ),
  );
}
