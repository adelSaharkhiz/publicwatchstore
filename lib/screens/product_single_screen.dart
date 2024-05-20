import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mywatchstore/components/extentions.dart';
import 'package:mywatchstore/components/text_style.dart';
import 'package:mywatchstore/gen/assets.gen.dart';
import 'package:mywatchstore/res/colors.dart';
import 'package:mywatchstore/res/dimens.dart';
import 'package:mywatchstore/res/strings.dart';
import 'package:mywatchstore/widgets/add_to_cart_button.dart';
import 'package:mywatchstore/widgets/cart_badge.dart';
import 'package:mywatchstore/widgets/custome_app_bar.dart';
import 'package:mywatchstore/widgets/price_with_discount.dart';
import 'package:mywatchstore/widgets/product_tab_view.dart';

class ProductSingleScreen extends StatelessWidget {
  const ProductSingleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return SafeArea(
        child: Scaffold(
      appBar: CustomeAppBar(
          child: Row(
        children: [
          const CartBadge(),
          const Expanded(
              child: Text(
            "product name",
            style: AppTextStyles.productTitle,
            textDirection: TextDirection.rtl,
          )),
          IconButton(onPressed: () {}, icon: SvgPicture.asset(Assets.svg.close))
        ],
      )),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  Assets.png.unnamed.path,
                  fit: BoxFit.cover,
                  width: size.width,
                ),
                Container(
                  padding: const EdgeInsets.all(AppDimens.medium),
                  margin: const EdgeInsets.all(AppDimens.medium),
                  width: size.width,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.all(Radius.circular(AppDimens.medium))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text("بنسر", style: AppTextStyles.productTitle),
                      Text("مسواک بنسر مدل اکسترا با برس متوسط 3 عددی",
                          style: AppTextStyles.caption),
                      AppDimens.medium.height,
                      const Divider(
                        height: 2,
                        color: Colors.grey,
                      ),
                      const ProductTabView(),
                      60.height
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: AppDimens.medium),
                height: size.height * .069,
                color: AppColors.btmNavColor,
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PriceWithDiscount(discount: 20),
                    AddToCartBtn(
                      title: AppStrings.addToCart,
                      backgroundColor: AppColors.mainBtnColor,
                    )
                  ],
                ),
              ))
        ],
      ),
    ));
  }
}
