import 'package:flutter/material.dart';
import 'package:mywatchstore/components/extentions.dart';
import 'package:mywatchstore/components/text_style.dart';
import 'package:mywatchstore/res/dimens.dart';

class PriceWithDiscount extends StatelessWidget {
  const PriceWithDiscount({super.key, this.discount = 0});
  final discount;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const SizedBox(
          width: 115,
          height: 40,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("${63500.sepratedWithComa} تومان",
                textDirection: TextDirection.rtl),
            Text(122000.sepratedWithComa, style: AppTextStyles.oldPriceStyle)
          ],
        ),
        Visibility(
          visible: discount > 0 ? true : false,
          child: Positioned(
            top: 15,
            right: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 1),
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(AppDimens.large)),
              child: Text(
                "${discount.toString()} %",
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
        )
      ],
    );
  }
}
