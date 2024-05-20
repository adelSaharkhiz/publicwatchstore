import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mywatchstore/components/extentions.dart';
import 'package:mywatchstore/res/dimens.dart';
import '../components/text_style.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem(
      {super.key, required this.content, required this.svgPath});

  final String content;
  final String svgPath;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          content,
          style: AppTextStyles.title,
        ),
        AppDimens.small.width,
        SvgPicture.asset(svgPath),
      ],
    );
  }
}