import 'package:flutter/material.dart';
import 'package:mywatchstore/res/colors.dart';
import 'package:mywatchstore/res/dimens.dart';

class CustomeAppBar extends StatelessWidget implements PreferredSize {
  const CustomeAppBar({super.key, required this.child});

  @override
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: preferredSize.height,
      width: double.infinity,
      padding: const EdgeInsets.all(AppDimens.medium),
      decoration: const BoxDecoration(
          color: AppColors.appbar,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(AppDimens.medium),
              bottomRight: Radius.circular(AppDimens.medium)),
          boxShadow: [
            BoxShadow(
                color: AppColors.shadow, offset: Offset(0, 2), blurRadius: 3)
          ]),
      child: child,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
