import 'package:color_generator/presentation/controller/splash_page_controller.dart';
import 'package:color_generator/presentation/view/resource/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends StatelessWidget {
  SplashPage({Key? key}) : super(key: key);
  SplashPageController controller = Get.find<SplashPageController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.gray,
    );
  }
}
