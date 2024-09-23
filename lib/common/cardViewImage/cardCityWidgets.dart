import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:trip_booking2/common/cardViewImage/ImagCard.dart';
import 'package:trip_booking2/common/cardViewImage/RowLocalisation.dart';
import 'package:trip_booking2/common/cardViewImage/priceTimeWidgets.dart';
import 'package:trip_booking2/common/cardViewImage/starsWidgets.dart';
import 'package:trip_booking2/common/cardViewImage/titleCardImage.dart';
import 'package:trip_booking2/utils/constants/Colors.dart';
import 'package:trip_booking2/utils/constants/sizes.dart';
import 'package:trip_booking2/utils/constants/txtString.dart';
import 'package:trip_booking2/utils/device/helpers.dart';

class cardCityWidgets extends StatelessWidget {
  const cardCityWidgets({
    super.key,
    required this.img,
    required this.lieu,
  });
  final String img, lieu;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(TSizes.borderRadius),
        ),
        color: MyColor.primaru,
      ),
      width: HelperFuctions.screenWidth(),
      height: 310,
      child: Column(
        children: [
          imageCard(img: img),
          Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                rowLocalisationCard(lieu: lieu),
                const Gap(TSizes.sm),
                titleCardImage(lieu: lieu),
                const StarsRow(
                  vues: TxtString.vues,
                ),
              ],
            ),
          ),
          const Divider(
            height: TSizes.xs,
            color: MyColor.border,
          ),
          const Padding(
            padding: EdgeInsets.all(
              TSizes.defaultSpace,
            ),
            child: priceDureeWidgets(
              times: TxtString.times,
              price: TxtString.price,
            ),
          )
        ],
      ),
    );
  }
}
