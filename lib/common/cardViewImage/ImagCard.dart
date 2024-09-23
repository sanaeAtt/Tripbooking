import 'package:flutter/material.dart';
import 'package:trip_booking2/utils/constants/sizes.dart';
import 'package:trip_booking2/utils/device/helpers.dart';

class imageCard extends StatelessWidget {
  const imageCard({
    super.key,
    required this.img,
  });
  final String img;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(TSizes.borderRadius),
        topRight: Radius.circular(TSizes.borderRadius),
      ),
      child: Image.asset(
        img,
        fit: BoxFit.fill,
        width: HelperFuctions.screenWidth(),
        height: 150,
      ),
    );
  }
}
