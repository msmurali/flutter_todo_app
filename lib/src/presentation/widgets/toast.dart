import 'package:flutter/material.dart';

class Toast extends StatelessWidget {
  final String msg;

  const Toast({Key? key, required this.msg}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 24.0,
        vertical: 4.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2.0),
        color: Colors.grey[350],
      ),
      child: Text(
        msg,
        style: const TextStyle(
          fontSize: 14.0,
          color: Colors.black,
          fontFamily: 'Poppins',
        ),
      ),
    );
  }
}
