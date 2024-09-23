// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:trip_booking2/utils/constants/MyImage.dart';
import 'package:trip_booking2/utils/device/helpers.dart';

class bg_Page extends StatelessWidget {
  const bg_Page({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final portrait = HelperFuctions.isPortraitOrientation(context);
    return Opacity(
      opacity: .8,
      child: Image.asset(
        MyImages.bgWelcomePage,
        fit: portrait ? BoxFit.fitWidth : BoxFit.cover,
        width: HelperFuctions.screenWidth(),
        height: portrait ? 800 : HelperFuctions.screenHeight(),
      ),
    );
  }
}
