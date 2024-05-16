import 'package:flutter/material.dart';
import 'package:mywatchstore/routes/screen_names.dart';
import 'package:mywatchstore/screens/main_screen/basket_screen.dart';
import 'package:mywatchstore/screens/main_screen/home_screen.dart';
import 'package:mywatchstore/screens/main_screen/main_screen.dart';
import 'package:mywatchstore/screens/register_screen.dart';
import 'package:mywatchstore/screens/send_sms_screen.dart';
import 'package:mywatchstore/screens/verify_code_screen.dart';

Map<String, Widget Function(BuildContext)> routes = {
  ScreenNames.root: (context) => const SendSmsScreen(),
  ScreenNames.verifyCodeScreen: (context) => const VerifyCodeScreen(),
  ScreenNames.registerScreen: (context) => const RegisterScreen(),
  ScreenNames.mainScreen: (context) =>  MainScreen(),
  ScreenNames.basketScreen: (context) => const BasketScreen(),
  ScreenNames.homeScreen: (context) => const HomeScreen(),
};
