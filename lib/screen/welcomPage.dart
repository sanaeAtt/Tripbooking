import 'package:flutter/material.dart';
import 'package:trip_booking2/common/appBarCustom.dart';
import 'package:trip_booking2/screen/screens/heroPage.dart';
import 'package:trip_booking2/screen/screens/pg2.dart';
import 'package:trip_booking2/screen/screens/pg3.dart';
import 'package:trip_booking2/screen/screens/pg5.dart';
import 'package:trip_booking2/screen/screens/ppg4.dart';
import 'package:trip_booking2/utils/constants/Colors.dart';
import 'package:trip_booking2/utils/constants/MyImage.dart';
import 'package:trip_booking2/utils/constants/txtString.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarCustoms(
        leadingIcon: Icons.menu,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              MyImages.logo,
              color: MyColor.secondary,
              width: 30,
              height: 30,
            ),
            Text(
              TxtString.appName,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .apply(color: MyColor.secondary),
            ),
          ],
        ),
        actions: const [Icon(Icons.search)],
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [HeroPage(), pageCard(), page3(), Page4(), Page5()],
        ),
      ),
    );
  }
}
