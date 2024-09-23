import 'package:flutter/material.dart';
import 'package:trip_booking2/common/widgets/bgWidgets.dart';
import 'package:trip_booking2/common/widgets/textFormField.dart';
import 'package:trip_booking2/common/widgets/textTitle.dart';
import 'package:trip_booking2/utils/constants/Colors.dart';
import 'package:trip_booking2/utils/constants/MyImage.dart';
import 'package:trip_booking2/utils/constants/sizes.dart';
import 'package:trip_booking2/utils/constants/txtString.dart';
import 'package:trip_booking2/utils/device/helpers.dart';

class HeroPage extends StatelessWidget {
  const HeroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: HelperFuctions.screenWidth(),
      height: HelperFuctions.screenHeight() * .8,
      child: Stack(
        children: [
          const Positioned.fill(child: bg_Page()),
          Positioned(
            top: HelperFuctions.screenHeight() * 0.2,
            left: 35,
            right: 35,
            child: const TitleText(title: TxtString.Title),
          ),
          Positioned(
            top: HelperFuctions.screenHeight() * 0.4,
            left: 27.5,
            right: 27.5,
            child: Container(
              decoration: const BoxDecoration(
                color: MyColor.primaru,
                borderRadius:
                    BorderRadius.all(Radius.circular(TSizes.borderRadius)),
              ),
              child: Column(
                children: [
                  const textFormField(
                    img: MyImages.citis,
                    title: TxtString.cities,
                  ),
                  const textFormField(
                    img: MyImages.type,
                    title: TxtString.TourType,
                  ),
                  const textFormField(
                    img: MyImages.duration,
                    title: TxtString.duration,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: MyColor.secondary,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(TSizes.borderRadius),
                        bottomRight: Radius.circular(TSizes.borderRadius),
                      ),
                    ),
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        TxtString.search,
                        style: const TextStyle().copyWith(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
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
