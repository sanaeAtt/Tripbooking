import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trip_booking2/screen/welcomPage.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
