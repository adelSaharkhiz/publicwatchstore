import 'package:flutter/material.dart';
import 'package:mywatchstore/components/extentions.dart';
import 'package:mywatchstore/components/text_style.dart';
import 'package:mywatchstore/gen/assets.gen.dart';
import 'package:mywatchstore/res/colors.dart';
import 'package:mywatchstore/res/dimens.dart';

// ignore: must_be_immutable
class ProductsContainer extends StatelessWidget {
  ProductsContainer({
    required this.onTap,
    super.key,
  });

  void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          padding: const EdgeInsets.all(AppDimens.small),
          margin: const EdgeInsets.all(AppDimens.medium),
          width: 200,
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                  colors: AppColors.productBgGradiant,
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter),
              borderRadius: BorderRadius.circular(AppDimens.medium)),
          child: Column(
            children: [
              Image.asset(Assets.png.unnamed.path, fit: BoxFit.cover),
              const Align(
                  alignment: Alignment.topRight,
                  child: Text("ساعت مردانه رولکس",
                      style: AppTextStyles.productTitle)),
              AppDimens.medium.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("${63500.sepratedWithComa}تومان",
                          textDirection: TextDirection.rtl),
                      Text(122000.sepratedWithComa,
                          textDirection: TextDirection.rtl,
                          style: AppTextStyles.oldPriceStyle),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(AppDimens.small * .5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        color: Colors.red),
                    child: const Text("20 %"),
                  ),
                ],
              ),
              AppDimens.medium.height,
              Container(
                height: 2,
                width: double.infinity,
                color: Colors.blue,
              ),
              AppDimens.medium.height,
              const Text(
                "09:30:45",
                style: AppTextStyles.prodTimerStyle,
              )
            ],
          )),
    );
  }
}
