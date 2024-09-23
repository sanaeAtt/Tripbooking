import 'package:flutter/material.dart';
import 'package:trip_booking2/utils/constants/Colors.dart';

class TtextTheme {
  TtextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    labelMedium: const TextStyle().copyWith(
      fontFamily: 'DM Sans',
      fontSize: 35,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
    headlineLarge: const TextStyle().copyWith(
      fontSize: 36.0,
      fontFamily: 'DM Sans',
      fontWeight: FontWeight.w700,
      height: 46.87,
      color: MyColor.primaru,
    ),
    headlineSmall: const TextStyle().copyWith(
      fontFamily: 'DM Sans',
      fontWeight: FontWeight.bold,
      fontSize: 21,
      color: Colors.black,
    ),
    headlineMedium: const TextStyle().copyWith(
      color: Colors.black,
      fontFamily: 'DM Sans',
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    titleLarge: const TextStyle().copyWith(
      fontSize: 35,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
    labelLarge: const TextStyle().copyWith(
        color: MyColor.primaru,
        fontFamily: 'DM Sans',
        fontSize: 28,
        fontWeight: FontWeight.bold),
    labelSmall: const TextStyle().copyWith(
      fontFamily: 'DM Sans',
      color: MyColor.accent,
    ),
  );
}
