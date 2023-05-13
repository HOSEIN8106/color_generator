import 'package:color_generator/presentation/view/resource/app_string.dart';
import 'package:color_generator/presentation/view/routes/app_pages.dart';
import 'package:color_generator/presentation/view/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ColorGeneratorApp extends StatelessWidget {
  const ColorGeneratorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: AppString.appName,
      debugShowCheckedModeBanner: true,
      initialRoute: AppRoutes.INITIAL,
      getPages: AppPages.pages,
      defaultTransition: Transition.cupertino,
    );
  }
}
