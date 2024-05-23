import 'package:flutter/material.dart';
import 'package:mywatchstore/routes/screen_names.dart';
import 'package:mywatchstore/screens/main_screen/cart_screen.dart';
import 'package:mywatchstore/screens/main_screen/main_screen.dart';
import 'package:mywatchstore/screens/product_single_screen.dart';
import 'package:mywatchstore/screens/product_list_screen.dart';
import 'package:mywatchstore/screens/register/register_screen.dart';
import 'package:mywatchstore/screens/auth/send_sms_screen.dart';
import 'package:mywatchstore/screens/auth/verify_code_screen.dart';

Map<String, Widget Function(BuildContext)> routes = {
  ScreenNames.sendSmsScreen: (context) => const SendSmsScreen(),
  ScreenNames.verifyCodeScreen: (context) => const VerifyCodeScreen(),
  ScreenNames.registerScreen: (context) => const RegisterScreen(),
  ScreenNames.mainScreen: (context) =>  const MainScreen(),
  ScreenNames.productListScreen: (context) => const ProductListScreen(),
  ScreenNames.productSingleScreen: (context) => const ProductSingleScreen(),
  ScreenNames.cartScreen: (context) => const CartScreen(),
};
