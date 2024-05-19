import 'package:flutter/material.dart';
import 'package:mywatchstore/components/button_style.dart';
import 'package:mywatchstore/components/text_style.dart';
import 'package:mywatchstore/res/strings.dart';

class AddToCartBtn extends StatelessWidget {
  const AddToCartBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ElevatedButton(
          style: ButtonStyles.addToCartbUtton,
          onPressed: () {},
          child: const Text(
            AppStrings.addToCart,
            style: AppTextStyles.mainbuttn,
          )),
    );
  }
}
