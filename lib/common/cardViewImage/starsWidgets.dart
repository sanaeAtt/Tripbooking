import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:trip_booking2/utils/constants/Colors.dart';
import 'package:trip_booking2/utils/constants/sizes.dart';

class StarsRow extends StatelessWidget {
  const StarsRow({
    super.key,
    required this.vues,
  });
  final String vues;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (var i = 0; i < 5; i++) ...[
          const Icon(
            Icons.star,
            color: MyColor.secondary,
          ),
          const Gap(TSizes.xs),
        ],
        const Gap(TSizes.xs),
        Text(vues),
      ],
    );
  }
}
