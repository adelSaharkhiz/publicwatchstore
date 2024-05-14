import 'package:flutter/material.dart';
import 'package:mywatchstore/components/extentions.dart';
import 'package:mywatchstore/res/dimens.dart';

// ignore: must_be_immutable
class AppTextField extends StatelessWidget {
  final String lablel;
  final String hintText;
  Widget icon;
  TextEditingController controller;
  TextAlign textAlign;
  TextInputType? inputType;
  AppTextField(
      {super.key,
      required this.lablel,
      required this.controller,
      required this.hintText,
      this.textAlign = TextAlign.center,
      this.icon = const SizedBox(),
      this.inputType});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(lablel),
          AppDimens.medium.height,
          SizedBox(
            height: size.height * .07,
            width: size.width * .75,
            child: TextField(
              textAlign: textAlign,
              controller: controller,
              keyboardType: inputType,
              decoration: InputDecoration(hintText: hintText, prefixIcon: icon),
            ),
          )
        ],
      ),
    );
  }
}
