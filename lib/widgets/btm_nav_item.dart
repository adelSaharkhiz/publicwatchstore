import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mywatchstore/components/extentions.dart';
import 'package:mywatchstore/components/text_style.dart';
import 'package:mywatchstore/res/colors.dart';
import 'package:mywatchstore/res/dimens.dart';

// ignore: must_be_immutable
class BtmNavItem extends StatelessWidget {
  final String iconPath;
  final String text;
  final bool isActive;
  void Function() onTap;

  BtmNavItem(
      {super.key,
      required this.iconPath,
      required this.text,
      required this.isActive,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(4),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(iconPath,
                colorFilter: ColorFilter.mode(
                    isActive
                        ? AppColors.btmNavActiveItem
                        : AppColors.btmNavInActiveItem,
                    BlendMode.srcIn)),
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
