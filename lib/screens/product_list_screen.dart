import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mywatchstore/components/extentions.dart';
import 'package:mywatchstore/components/text_style.dart';
import 'package:mywatchstore/gen/assets.gen.dart';
import 'package:mywatchstore/res/dimens.dart';
import 'package:mywatchstore/widgets/cart_badge.dart';
import 'package:mywatchstore/widgets/custome_app_bar.dart';
import 'package:mywatchstore/widgets/products_container.dart';
import 'package:mywatchstore/widgets/tag_list.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: CustomeAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CartBadge(count: 2),
            Row(
              children: [
                const Text(
                  "پرفروشترین ها",
                  style: AppTextStyles.title,
                ),
                AppDimens.medium.width,
                SvgPicture.asset(Assets.svg.sort)
              ],
            ),
            IconButton(
                onPressed: () {}, icon: SvgPicture.asset(Assets.svg.close))
          ],
        ),
      ),
      body: const Column(
        children: [TagList(), ProductGridView()],
      ),
    ));
  }
}

class ProductGridView extends StatelessWidget {
  const ProductGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GridView.builder(
      physics: const ClampingScrollPhysics(),
      itemCount: 8,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 2,
          crossAxisSpacing: 2,
          childAspectRatio: 0.7),
      itemBuilder: (context, index) {
        return ProductsContainer(
          onTap: () {},
          productName: "ساعت رولکس",
          price: 200,
          timer: 1,
          discount: 1,
        );
      },
    ));
  }
}
