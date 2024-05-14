import 'package:flutter/material.dart';
import 'package:mywatchstore/res/colors.dart';
import 'package:mywatchstore/res/dimens.dart';

ThemeData lightTheme() {
  return ThemeData(
      brightness: Brightness.light,
      primaryColor: AppColors.primaryColor,
      scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
      iconTheme: const IconThemeData(color: Colors.black),
      inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: MaterialStateColor.resolveWith((states) {
            if (states.contains(MaterialState.focused)) {
              return AppColors.focusedTextField;
            } else {
              return AppColors.unFocusedTextField;
            }
          }),
          contentPadding: const EdgeInsets.all(AppDimens.medium),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppDimens.medium),
              borderSide: const BorderSide(color: AppColors.borderColor)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppDimens.medium),
              borderSide: const BorderSide(color: AppColors.focusedBorderColor))));
}
