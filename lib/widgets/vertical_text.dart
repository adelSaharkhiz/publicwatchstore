import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mywatchstore/components/extentions.dart';
import 'package:mywatchstore/components/text_style.dart';
import 'package:mywatchstore/gen/assets.gen.dart';
import 'package:mywatchstore/res/dimens.dart';
import 'package:mywatchstore/res/strings.dart';

class VerticalText extends StatelessWidget {
  const VerticalText({
    required this.title,
    super.key,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: -1,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Transform.rotate(
                    angle: 1.5, child: SvgPicture.asset(Assets.svg.back)),
                const Text(
                  AppStrings.viewAll,
                  style: AppTextStyles.title,
                ),
              ],
            ),
            AppDimens.large.height,
            Text(
              title,
              style: AppTextStyles.amazingStyle,
            )
          ],
        ),
      ),
    );
  }
}
