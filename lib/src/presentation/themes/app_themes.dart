import 'package:flutter/material.dart';

class AppThemes {
  static final ThemeData light = ThemeData.light().copyWith(
    primaryColor: Colors.blue.shade900,
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
              borderSide: BorderSide(
                width: 1.4,
                color: Colors.grey.shade300,
              ),
            );
          } else {
            return OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(
                width: 1.4,
                color: Colors.blue.shade900,
              ),
            );
          }
        },
      ),
    ),
  );
}
