import 'package:flutter/material.dart';
import 'package:mywatchstore/components/text_style.dart';
import 'package:mywatchstore/res/colors.dart';
import '../res/dimens.dart';

class AddToCartBtn extends StatelessWidget {
  const AddToCartBtn(
      {super.key, required this.title, required this.backgroundColor});

  final String title;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(backgroundColor),
              foregroundColor:
                  const WidgetStatePropertyAll(AppColors.mainButtonText),
              shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppDimens.medium)))),
          onPressed: () {},
          child: Text(
            title,
            style: AppTextStyles.mainbuttn,
          )),
    );
  }
}
