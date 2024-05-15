import 'package:flutter/material.dart';
import 'package:mywatchstore/components/button_style.dart';
import 'package:mywatchstore/components/text_style.dart';

// ignore: must_be_immutable
class MainButton extends StatelessWidget {
  void Function() onPressed;
  final String text;

  MainButton({super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * .07,
      width: size.width * .75,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ButtonStyles.mainButton,
          child: Text(text, style: AppTextStyles.mainbuttn)),
    );
  }
}
