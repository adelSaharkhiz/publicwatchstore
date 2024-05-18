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
    required this.productName,
    required this.price,
    this.oldPrice = 0,
    this.discount = 0,
    this.timer = 0,
    super.key,
  });

  void Function() onTap;
  final productName;
  final oldPrice;
  final price;
  final discount;
  final timer;

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
              Align(
                  alignment: Alignment.topRight,
                  child: Text(productName, style: AppTextStyles.productTitle)),
              AppDimens.medium.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("${6000000} تومان",
                          textDirection: TextDirection.rtl),
                      Visibility(
                        visible: discount > 0 ? true : false,
                        child: const Text("${8000000}",
                            textDirection: TextDirection.rtl,
                            style: AppTextStyles.oldPriceStyle),
                      ),
                    ],
                  ),
                  Visibility(
                    visible: discount > 0 ? true : false,
                    child: Container(
                      padding: const EdgeInsets.all(AppDimens.small * .5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          color: Colors.red),
                      child: Text("$discount %"),
                    ),
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
              Visibility(
                visible: timer > 0 ? true : false,
                child: const Text(
                  "09:26:45",
                  style: AppTextStyles.prodTimerStyle,
                ),
              )
            ],
          )),
    );
  }
}
