import 'package:flutter/material.dart';
import 'package:trip_booking2/theme/txtTheme.dart';
import 'package:trip_booking2/utils/device/helpers.dart';

class title extends StatelessWidget {
  const title({
    super.key,
    required this.txt,
    required this.color,
  });
  final String txt;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: HelperFuctions.screenWidth() * .4,
      child: Text(txt,
          style: TtextTheme.lightTextTheme.headlineSmall!.copyWith(
            color: color,
          )),
    );
  }
}
