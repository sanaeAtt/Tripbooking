import 'package:flutter/material.dart';

class priceDureeWidgets extends StatelessWidget {
  const priceDureeWidgets({
    super.key,
    required this.price,
    required this.times,
  });
  final String price, times;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.watch_later_outlined,
          color: Colors.black,
        ),
        Text(times),
        const Spacer(),
        Text(price),
      ],
    );
  }
}
