// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class titleCardImage extends StatelessWidget {
  const titleCardImage({
    super.key,
    required this.lieu,
  });
  final String lieu;
  @override
  Widget build(BuildContext context) {
    return Text(
      "Half Day Private $lieu City Tour",
      
      style: const TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      maxLines: 1,
                    overflow: TextOverflow.ellipsis,
    );
  }
}
