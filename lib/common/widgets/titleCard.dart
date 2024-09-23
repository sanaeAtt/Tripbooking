// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:trip_booking2/utils/constants/Colors.dart';
import 'package:trip_booking2/utils/constants/sizes.dart';

class CardText extends StatelessWidget {
  const CardText({
    super.key,
    required this.icon,
    required this.title,
    required this.subTitle,
  });

  final String title, subTitle;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Material(
            elevation: TSizes.cardElevation,
            borderRadius: BorderRadius.circular(TSizes.borderRadius),
            child: Container(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              decoration: BoxDecoration(
                color: MyColor.primaru,
                borderRadius: BorderRadius.circular(TSizes.borderRadius),
              ),
              constraints: const BoxConstraints(
                minHeight: 210,
              ),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FaIcon(
                    icon,
                    color: MyColor.secondary,
                    size: 35,
                  ),
                  const Gap(TSizes.borderRadius),
                  Text(
                    title,
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const Gap(TSizes.md),
                  Text(
                    subTitle,
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                      color: MyColor.accent,
                      fontSize: 14,
                    ),
                    maxLines: 5,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
