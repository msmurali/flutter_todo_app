import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'src/presentation/widgets/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const AppWidget());
}
