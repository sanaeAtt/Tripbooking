// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:trip_booking2/utils/constants/Colors.dart';
import 'package:trip_booking2/utils/constants/sizes.dart';
import 'package:trip_booking2/utils/device/helpers.dart';

class cardView extends StatelessWidget {
  const cardView({
    super.key,
    required this.txt,
    required this.img,
  });
  final String txt, img;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: HelperFuctions.screenWidth(),
      height: 160,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius:
                const BorderRadius.all(Radius.circular(TSizes.borderRadius)),
            child: Image.asset(
              img,
              fit: BoxFit.cover,
              width: HelperFuctions.screenWidth(),
              height: 160,
            ),
          ),
          Positioned(
            bottom: TSizes.espaceTitleCardBottom,
            left: TSizes.defaultSpace,
            child: Container(
              padding: const EdgeInsets.all(TSizes.defaultSpace / 2),
              width: HelperFuctions.screenWidth() * .3,
              child: Text(
                txt,
                style: const TextStyle(
                  color: MyColor.primaru,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
