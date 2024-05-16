import 'package:flutter/material.dart';
import 'package:mywatchstore/components/theme.dart';
import 'package:mywatchstore/routes/routes.dart';
import 'package:mywatchstore/routes/screen_names.dart';

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
      initialRoute: ScreenNames.root,
      routes: routes,
    );
  }
}
