import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart' hide Toast;
import './widgets/toast.dart';

void showToastMsg(BuildContext context, String msg) {
  final FToast ftoast = FToast();
  ftoast.init(context);
  ftoast.showToast(
    child: Toast(msg: msg),
    gravity: ToastGravity.BOTTOM,
    toastDuration: const Duration(milliseconds: 500),
  );
}
