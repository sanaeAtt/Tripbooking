import 'package:flutter/material.dart';
import 'package:trip_booking2/utils/constants/Colors.dart';

class Appbartheme {
  Appbartheme._();
  static const lightAppBarTheme = AppBarTheme(
    elevation: 8,
    toolbarHeight: 48,
    centerTitle: true,
    scrolledUnderElevation: 0,
    backgroundColor: MyColor.primaru,
    surfaceTintColor: MyColor.primaru,
    iconTheme: IconThemeData(color: Colors.black, size: 30),
    actionsIconTheme: IconThemeData(color: Colors.black, size: 30),
    titleTextStyle: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: MyColor.secondary,
    ),
  );
}
