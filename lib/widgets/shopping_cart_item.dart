import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mywatchstore/components/extentions.dart';
import 'package:mywatchstore/components/text_style.dart';
import 'package:mywatchstore/gen/assets.gen.dart';
import 'package:mywatchstore/res/colors.dart';
import 'package:mywatchstore/res/dimens.dart';
import 'package:mywatchstore/widgets/surface_container.dart';

class ShoingCartItem extends StatelessWidget {
  const ShoingCartItem({
    super.key,
    required this.productTitle,
    required this.price,
    required this.number,
    this.discount = 0,
  });

  final int price;
  final int discount;
  final int number;
  final String productTitle;

  @override
  Widget build(BuildContext context) {
    return SurfaceContaner(
        child: Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                productTitle,
                style: AppTextStyles.title,
              ),
              Text("قیمت  : ${price.sepratedWithComa} تومان",
                  style: AppTextStyles.caption),
              Visibility(
                visible: discount > 0 ? true : false,
                child: Text(
                  "با تخفیف: ${discount.sepratedWithComa}  تومان",
                  style: AppTextStyles.caption
                      .copyWith(color: AppColors.primaryColor),
                ),
              ),
              AppDimens.small.height,
              const Divider(color: Colors.grey),
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(Assets.svg.delete)),
                  const Expanded(child: SizedBox()),
                  IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(Assets.svg.minus)),
                  Text("$number عدد"),
                  IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(Assets.svg.plus)),
                ],
              )
            ],
          ),
        ),
        Image.asset(
          Assets.png.unnamed.path,
          height: 130,
          fit: BoxFit.cover,
        ),
      ],
    ));
    
  }
}
