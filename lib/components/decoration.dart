import 'package:flutter/material.dart';
import 'package:mywatchstore/res/colors.dart';
import 'package:mywatchstore/res/dimens.dart';

class BoxDecorations {
  static BoxDecoration surfaceContainer = BoxDecoration(
    color: AppColors.surfaceColor,
    borderRadius: BorderRadius.circular(AppDimens.medium),
  );

  static BoxDecoration productsContainer = BoxDecoration(
      gradient: const LinearGradient(
          colors: AppColors.productBgGradiant,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter),
      borderRadius: BorderRadius.circular(AppDimens.medium));
}
