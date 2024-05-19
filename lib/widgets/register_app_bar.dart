import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mywatchstore/components/text_style.dart';
import 'package:mywatchstore/gen/assets.gen.dart';
import 'package:mywatchstore/res/colors.dart';
import 'package:mywatchstore/res/dimens.dart';
import 'package:mywatchstore/res/strings.dart';

class RegisterAppBar extends StatelessWidget implements PreferredSize {
  const RegisterAppBar({
    required this.size,
    super.key,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(preferredSize: preferredSize, child: child);
  }

  @override
  Widget get child => Container(
        padding: const EdgeInsets.all(AppDimens.medium),
        color: AppColors.appbar,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {}, icon: SvgPicture.asset(Assets.svg.back)),
            const Text(
              AppStrings.register,
              style: AppTextStyles.title,
            )
          ],
        ),
      );

  @override
  Size get preferredSize => Size.fromHeight(size.height * .08);
}
