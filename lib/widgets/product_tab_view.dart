import 'package:flutter/widgets.dart';
import 'package:mywatchstore/components/text_style.dart';

import '../res/dimens.dart';
import '../res/strings.dart';

class ProductTabView extends StatefulWidget {
  const ProductTabView({super.key});

  @override
  State<ProductTabView> createState() => _ProductTabViewState();
}

class _ProductTabViewState extends State<ProductTabView> {
  var selectedTabIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
          width: double.infinity,
          child: ListView.builder(
              // reverse: true,
              scrollDirection: Axis.horizontal,
              itemCount: AppStrings.tabs.length,
              itemExtent: MediaQuery.sizeOf(context).width / 3,
              itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedTabIndex = index;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(AppDimens.medium),
                      child: Text(
                        AppStrings.tabs[index],
                        style: index == selectedTabIndex
                            ? AppTextStyles.selectedTab
                            : AppTextStyles.unSelectedTab,
                      ),
                    ),
                  )),
        ),
        IndexedStack(
          index: selectedTabIndex,
          children: const [
            Comments(),
            Review(),
            Properties(),
          ],
        )
      ],
    );
  }
}

class Comments extends StatelessWidget {
  const Comments({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text("Comments",textDirection: TextDirection.rtl);
  }
}

class Review extends StatelessWidget {
  const Review({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text("Reviews");
  }
}

class Properties extends StatelessWidget {
  const Properties({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(AppStrings.luremFull);
  }
}
