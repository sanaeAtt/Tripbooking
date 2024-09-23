import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:trip_booking2/common/cards/CardView.dart';
import 'package:trip_booking2/common/cards/demiCardView.dart';
import 'package:trip_booking2/common/widgets/title.dart';
import 'package:trip_booking2/utils/constants/Colors.dart';
import 'package:trip_booking2/utils/constants/MyImage.dart';
import 'package:trip_booking2/utils/constants/sizes.dart';
import 'package:trip_booking2/utils/constants/txtString.dart';

class pageCard extends StatelessWidget {
  const pageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(TSizes.defaultSpace),
      child: Column(
        children: [
          Row(
            children: [
              title(
                txt: TxtString.title_2,
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
              ),
            ],
          ),
          Gap(TSizes.spaceBtwFields),
          cardView(
            txt: TxtString.DayTripTours,
            img: MyImages.datTrip,
          ),
          Gap(TSizes.spaceBtwFields),
          Row(
            children: [
              Expanded(
                child: demiCardView(
                  txt: TxtString.uniqueExperience,
                  img: MyImages.unique,
                  height: 160,
                ),
              ),
              Gap(TSizes.spaceBtwFields),
              Expanded(
                child: demiCardView(
                  txt: TxtString.CulturalandHistorical,
                  img: MyImages.culture,
                  height: 160,
                ),
              ),
            ],
          ),
          Gap(TSizes.spaceBtwFields),
          Row(
            children: [
              Expanded(
                child: demiCardView(
                  txt: TxtString.desertMoroccoTours,
                  img: MyImages.desert,
                  height: 160,
                ),
              ),
              Gap(TSizes.spaceBtwFields),
              Expanded(
                child: demiCardView(
                  txt: TxtString.food,
                  img: MyImages.food,
                  height: 160,
                ),
              ),
            ],
          ),
          Gap(TSizes.spaceBtwFields),
          cardView(
            txt: TxtString.quad,
            img: MyImages.quad,
          ),
        ],
      ),
    );
  }
}
