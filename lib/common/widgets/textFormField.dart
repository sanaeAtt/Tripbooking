// ignore_for_file: unused_import, camel_case_types

import 'package:flutter/material.dart';
import 'package:trip_booking2/utils/constants/Colors.dart';
import 'package:trip_booking2/utils/constants/sizes.dart';

class textFormField extends StatelessWidget {
  const textFormField({
    super.key,
    required this.img,
    required this.title,
  });
  final String img, title;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: MyColor.border,
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: MyColor.border,
          ),
        ),
        label: Padding(
          padding: const EdgeInsets.only(left: TSizes.borderRadius),
          child: Text(
            title,
            style: Theme.of(context).textTheme.labelLarge,
          ),
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.all(TSizes.borderRadius),
          child: Image.asset(
            img,
            width: 10,
            height: 10,
          ),
        ),
      ),
    );
  }
}
