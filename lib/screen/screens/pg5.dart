// Page5.dart
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:trip_booking2/common/cards/demiCardView.dart';
import 'package:trip_booking2/common/widgets/title.dart';
import 'package:trip_booking2/utils/constants/Colors.dart';
import 'package:trip_booking2/utils/constants/MyImage.dart';
import 'package:trip_booking2/utils/constants/sizes.dart';
import 'package:trip_booking2/utils/constants/txtString.dart';
import 'package:trip_booking2/utils/device/helpers.dart';

class Page5 extends StatelessWidget {
  const Page5({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> data = [
      {"title": "Tangier", "img": MyImages.tanger1, "subtitle": "146+ Tours"},
      {"title": "Tangier", "img": MyImages.tanger2, "subtitle": "146+ Tours"},
      {"title": "Tangier", "img": MyImages.tanger3, "subtitle": "146+ Tours"},
      {"title": "Tangier", "img": MyImages.tanger4, "subtitle": "146+ Tours"},
    ];

    return Container(
      height: 660,
      width: HelperFuctions.screenWidth(),
      color: MyColor.blue,
      child: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            const Row(
              children: [
                title(
                  txt: TxtString.title_5,
                  color: MyColor.primaru,
                ),
                Spacer(),
                Row(
                  children: [
                    Text(
                      TxtString.seeAll,
                      style: TextStyle(color: MyColor.primaru),
                    ),
                    Icon(
                      Icons.arrow_outward,
                      color: MyColor.primaru,
                    ),
                  ],
                ),
              ],
            ),
            const Gap(TSizes.spaceBtwFields),
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: TSizes.defaultSpace,
                  mainAxisSpacing: TSizes.defaultSpace,
                  childAspectRatio: 0.8,
                ),
                itemCount: data.length,
                itemBuilder: (context, index) {
                  final card = data[index];
                  print(
                      'Building card: ${card["title"]}, ${card["img"]}, ${card["subtitle"]}');
                  return demiCardView(
                    txt: card["title"]!,
                    img: card["img"]!,
                    height: 250,
                    algn: true,
                    subtitle: card["subtitle"]!,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
