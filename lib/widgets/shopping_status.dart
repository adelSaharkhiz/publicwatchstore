import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mywatchstore/components/extentions.dart';
import 'package:mywatchstore/components/text_style.dart';
import 'package:mywatchstore/res/dimens.dart';

class ShoppingStatus extends StatelessWidget {
  const ShoppingStatus({
    super.key,
    required this.status,
    required this.svgPath,
  });
  final String svgPath;
  final String status;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(svgPath),
        AppDimens.large.height,
        Text(
          status,
          style: AppTextStyles.title,
        )
      ],
    );
  }
}
