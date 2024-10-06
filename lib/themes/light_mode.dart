import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
    colorScheme: ColorScheme.light(
  surface:  const Color.fromARGB(255, 255, 255, 255),
  primary: Colors.grey.shade500,
  secondary: Colors.grey.shade100,
  tertiary: Colors.white,
  inversePrimary: Colors.grey.shade700,
  error: Colors.black,
  primaryFixed: const Color.fromARGB(255, 0, 0, 0),
  onError: Colors.white,
));

