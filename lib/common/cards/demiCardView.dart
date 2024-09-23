// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:trip_booking2/utils/constants/Colors.dart';
import 'package:trip_booking2/utils/constants/sizes.dart';
import 'package:trip_booking2/utils/device/helpers.dart';

class demiCardView extends StatelessWidget {
  const demiCardView({
    super.key,
    required this.txt,
    required this.img,
    required this.height,
    this.algn = false,
    this.subtitle = "",
  });

  final String txt, subtitle, img;
  final double height;
  final bool algn;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          child: Image.asset(
            img,
            fit: BoxFit.cover,
            width: HelperFuctions.screenWidth(),
            height: height,
          ),
        ),
        Positioned(
          bottom: algn
              ? TSizes.espaceTitleCardBottom + 15
              : TSizes.espaceTitleCardBottom,
          left: algn ? 0 : TSizes.defaultSpace,
          right: algn ? 0 : null,
          child: algn
              ? Center(
                  child: SizedBox(
                    width: HelperFuctions.screenWidth() * .3,
                    child: Column(
                      children: [
                        Text(
                          txt,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: MyColor.primaru,
                            fontFamily: 'DM Sans',
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          subtitle,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: MyColor.primaru,
                            fontFamily: 'DM Sans',
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              : SizedBox(
                  width: HelperFuctions.screenWidth() * .3,
                  child: Text(
                    txt,
                    style: const TextStyle(
                      color: MyColor.primaru,
                      fontFamily: 'DM Sans',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
        ),
      ],
    );
  }
}
