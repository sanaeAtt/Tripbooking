// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:trip_booking2/common/widgets/title.dart';
import 'package:trip_booking2/common/widgets/titleCard.dart';
import 'package:trip_booking2/utils/constants/Colors.dart';
import 'package:trip_booking2/utils/constants/sizes.dart';
import 'package:trip_booking2/utils/constants/txtString.dart';

class page3 extends StatelessWidget {
  const page3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(TSizes.defaultSpace),
      child: Column(
        children: [
          Row(
            children: [
              title(
                txt: TxtString.title_3,
                color: MyColor.black,
              ),
            ],
          ),
          Gap(TSizes.defaultSpace),
          Row(
            children: [
              CardText(
                icon: FontAwesomeIcons.puzzlePiece,
                title: TxtString.titleCard1,
                subTitle: TxtString.SubtitleCard1,
              ),
              Gap(TSizes.defaultSpace),
              CardText(
                icon: FontAwesomeIcons.peopleGroup,
                title: TxtString.titleCard2,
                subTitle: TxtString.SubtitleCard2,
              ),
            ],
          ),
          Gap(TSizes.defaultSpace),
          Row(
            children: [
              CardText(
                icon: FontAwesomeIcons.gem,
                title: TxtString.titleCard3,
                subTitle: TxtString.SubtitleCard3,
              ),
              Gap(TSizes.defaultSpace),
              CardText(
                icon: FontAwesomeIcons.certificate,
                title: TxtString.titleCard4,
                subTitle: TxtString.SubtitleCard4,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
