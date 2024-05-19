import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../gen/assets.gen.dart';

class CartBadge extends StatelessWidget {
  const CartBadge({super.key, this.count = 0});
  final count;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const SizedBox(
          height: 32,
          width: 32,
        ),
        SvgPicture.asset(Assets.svg.basket),
        Visibility(
          visible: count > 0 ? true : false,
          child: Positioned(
            top: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                  color: Colors.red, shape: BoxShape.circle),
              child: Text(
                count.toString(),
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
