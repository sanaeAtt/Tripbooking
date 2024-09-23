// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:trip_booking2/utils/constants/Colors.dart';
import 'package:trip_booking2/utils/constants/sizes.dart';

class rowLocalisationCard extends StatelessWidget {
  const rowLocalisationCard({
    super.key,
    required this.lieu,
  });
  final String lieu;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const FaIcon(
          FontAwesomeIcons.locationDot,
          color: MyColor.secondary,
        ),
        const Gap(TSizes.defaultSpace),
        Text(
          lieu,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
      ],
    );
  }
}
