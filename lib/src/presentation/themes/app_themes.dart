import 'package:flutter/material.dart';

class AppThemes {
  static final ThemeData light = ThemeData.light().copyWith(
    primaryColor: const Color(0xFF5D13E7),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(
            horizontal: 32.0,
            vertical: 12.0,
          ),
        ),
        backgroundColor: MaterialStateProperty.all(
          const Color(
            0xFF5D13E7,
          ),
        ),
      ),
    ),
    textTheme: const TextTheme(
      bodyText1: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 16.0,
        fontWeight: FontWeight.w400,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.grey.shade200,
      hintStyle: const TextStyle(
        fontFamily: 'Poppins',
        fontSize: 16.0,
        fontWeight: FontWeight.w400,
        color: Colors.grey,
      ),
      errorStyle: TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w500,
        color: Colors.redAccent.shade400,
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
