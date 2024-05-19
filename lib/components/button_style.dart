import 'package:flutter/material.dart';
import 'package:mywatchstore/res/colors.dart';
import 'package:mywatchstore/res/dimens.dart';

class ButtonStyles {
  ButtonStyles._();

  static ButtonStyle mainButton = ButtonStyle(
    backgroundColor: const WidgetStatePropertyAll(AppColors.mainBtnColor),
    foregroundColor: const WidgetStatePropertyAll(AppColors.mainButtonText),
      shape: WidgetStatePropertyAll(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimens.medium))));

  static ButtonStyle addToCartbUtton = ButtonStyle(
    backgroundColor: const WidgetStatePropertyAll(AppColors.mainBtnColor),
    foregroundColor: const WidgetStatePropertyAll(AppColors.mainButtonText),
      shape: WidgetStatePropertyAll(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimens.medium))));
}
