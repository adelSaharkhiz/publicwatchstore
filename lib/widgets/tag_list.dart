import 'package:flutter/material.dart';
import 'package:mywatchstore/components/text_style.dart';
import 'package:mywatchstore/res/dimens.dart';

class TagList extends StatelessWidget {
  const TagList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppDimens.medium),
      child: SizedBox(
        height: 24,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.symmetric(horizontal: AppDimens.small),
              margin: const EdgeInsets.symmetric(horizontal: AppDimens.small),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(AppDimens.large),
              ),
              child: const Text("نیوفورس", style: AppTextStyles.tagTitle),
            );
          },
        ),
      ),
    );
  }
}
