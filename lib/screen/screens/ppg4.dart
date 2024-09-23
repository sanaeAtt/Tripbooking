import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:trip_booking2/common/cardViewImage/cardCityWidgets.dart';
import 'package:trip_booking2/common/widgets/title.dart';
import 'package:trip_booking2/utils/constants/Colors.dart';
import 'package:trip_booking2/utils/constants/sizes.dart';
import 'package:trip_booking2/utils/constants/txtString.dart';

class Page4 extends StatelessWidget {
  const Page4({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(226, 247, 211, 196),
      child: Padding(
        padding: const EdgeInsets.only(
            left: TSizes.defaultSpace,
            right: TSizes.defaultSpace,
            bottom: TSizes.defaultSpace,
            top: TSizes.defaultSpace * 2),
        child: Column(
          children: [
            const Row(
              children: [
                title(
                  txt: TxtString.title_4,
                  color: MyColor.black,
                ),
                Spacer(),
                Row(
                  children: [
                    Text(
                      TxtString.seeAll,
                    ),
                    Icon(Icons.arrow_outward),
                  ],
                )
              ],
            ),
            const Gap(TSizes.spaceBtwFields),
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  for (int i = 0; i < 4; i++) ...[
                    cardCityWidgets(
                      img: TxtString.cityImg[i],
                      lieu: TxtString.city[i],
                    ),
                    const Gap(TSizes.defaultSpace),
                  ]
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
