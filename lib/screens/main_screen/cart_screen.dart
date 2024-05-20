import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mywatchstore/components/extentions.dart';
import 'package:mywatchstore/components/text_style.dart';
import 'package:mywatchstore/gen/assets.gen.dart';
import 'package:mywatchstore/res/colors.dart';
import 'package:mywatchstore/res/dimens.dart';
import 'package:mywatchstore/res/strings.dart';
import 'package:mywatchstore/widgets/add_to_cart_button.dart';
import 'package:mywatchstore/widgets/custome_app_bar.dart';
import 'package:mywatchstore/widgets/shopping_cart_item.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return SafeArea(
        child: Scaffold(
            appBar: const CustomeAppBar(
                child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                AppStrings.basket,
                style: AppTextStyles.title,
              ),
            )),
            body: SingleChildScrollView(
              child: Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(AppDimens.medium),
                        margin: const EdgeInsets.symmetric(
                            vertical: AppDimens.medium),
                        height: size.height * .1,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                offset: Offset(0, 3),
                                blurRadius: 3),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: SvgPicture.asset(Assets.svg.leftArrow)),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(AppStrings.sendToAddress,
                                      style: AppTextStyles.caption),
                                  const FittedBox(
                                    child: Text(AppStrings.lurem,
                                        style: AppTextStyles.title),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: size.height * .59,
                        width: double.infinity,
                        child: ListView.builder(
                            itemCount: 2,
                            scrollDirection: Axis.vertical,
                            itemBuilder: (context, index) {
                              return const ShoingCartItem(
                                productTitle: "ساعت رولکس",
                                discount: 500000,
                                price: 400000,
                                number: 1,
                              );
                            }),
                      ),
                      Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: AppDimens.medium),
                            height: size.height * .069,
                            color: AppColors.btmNavColor,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                AppDimens.small.width,
                                Text("مجموع 63.500 تومان",
                                    style: AppTextStyles.title
                                        .copyWith(fontSize: 16)),
                                const AddToCartBtn(
                                  title: AppStrings.proccessShopping,
                                  backgroundColor: AppColors.proccessShopping,
                                )
                              ],
                            ),
                          ))
                    ],
                  ),
                ],
              ),
            )));
  }
}
