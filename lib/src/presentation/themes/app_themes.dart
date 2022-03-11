import 'package:flutter/material.dart';

class AppThemes {
  static final ThemeData light = ThemeData.light().copyWith(
    primaryColor: const Color(0xFF5D13E7),
    buttonTheme: const ButtonThemeData(
      buttonColor: Color(0xFF5D13E7),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.grey.shade200,
      hintStyle: const TextStyle(
        color: Colors.grey,
      ),
      prefixIconColor: Colors.grey,
      border: MaterialStateOutlineInputBorder.resolveWith(
        (states) {
          if (states.contains(MaterialState.focused)) {
            return OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(
                width: 2.0,
                color: Color(0xFF5D13E7),
              ),
            );
          } else {
            return OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(
                width: 2.0,
                color: Colors.grey.shade300,
              ),
            );
          }
        },
      ),
    ),
  );
}
