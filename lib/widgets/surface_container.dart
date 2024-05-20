import 'package:flutter/widgets.dart';
import 'package:mywatchstore/components/decoration.dart';
import 'package:mywatchstore/res/dimens.dart';

class SurfaceContaner extends StatelessWidget {
  const SurfaceContaner({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppDimens.medium),
      margin: const EdgeInsets.fromLTRB(AppDimens.medium, AppDimens.medium,
          AppDimens.medium, AppDimens.small),
      decoration: BoxDecorations.surfaceContainer,
      child: child,
    );
  }
}
