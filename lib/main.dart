import 'package:flutter/material.dart';
import 'package:mywatchstore/components/theme.dart';
import 'package:mywatchstore/screens/register_screen.dart';
import 'package:mywatchstore/screens/send_sms_screen.dart';
import 'package:mywatchstore/screens/verify_code_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: lightTheme(),
      home: const RegisterScreen(),
    );
  }
}
