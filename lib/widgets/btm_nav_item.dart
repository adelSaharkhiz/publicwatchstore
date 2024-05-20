// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mywatchstore/components/extentions.dart';
import 'package:mywatchstore/components/text_style.dart';
import 'package:mywatchstore/gen/assets.gen.dart';
import 'package:mywatchstore/res/colors.dart';
import 'package:mywatchstore/res/dimens.dart';

// ignore: must_be_immutable
class BtmNavItem extends StatelessWidget {
  final String iconPath;
  final String text;
  final bool isActive;
  final count;
  void Function() onTap;

  BtmNavItem(
      {super.key,
      required this.iconPath,
      required this.text,
      required this.isActive,
      required this.onTap,
      this.count = 0});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(4),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                const SizedBox(height: 32, width: 32),
                SvgPicture.asset(iconPath,
                    colorFilter: ColorFilter.mode(
                        isActive
                            ? AppColors.btmNavActiveItem
                            : AppColors.btmNavInActiveItem,
                        BlendMode.srcIn)),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Visibility(
                    visible:
                        iconPath == Assets.svg.cart && count > 0 ? true : false,
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: const BoxDecoration(
                          color: Colors.red, shape: BoxShape.circle),
                      child: Text(count.toString(),
                          style: const TextStyle(color: Colors.white)),
                    ),
                  ),
                )
              ],
            ),
            AppDimens.small.height,
            Text(text,
                style: isActive
                    ? AppTextStyles.btmNavActive
                    : AppTextStyles.btmNavInActive)
          ],
        ),
      ),
    );
  }
}
