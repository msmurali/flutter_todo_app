import 'package:flutter/material.dart';

class Toast extends StatelessWidget {
  final String msg;

  const Toast({Key? key, required this.msg}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 4.0,
        vertical: 8.0,
      ),
      color: Colors.grey[350],
      child: Text(
        msg,
        style: const TextStyle(
          fontSize: 18.0,
          color: Colors.black,
          fontFamily: 'Poppins',
        ),
      ),
    );
  }
}
