import 'package:color_generator/presentation/controller/main_page_controller.dart';
import 'package:color_generator/presentation/view/resource/app_dimens.dart';
import 'package:color_generator/presentation/view/resource/app_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);
  MainPageController controller = Get.find<MainPageController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: GestureDetector(
        onTap: () {
          controller.changeColorStyle();
        },
        child: Obx(() => Container(
            padding: EdgeInsets.all(AppDimens.smallSpace),
            margin: EdgeInsets.only(bottom: AppDimens.smallSpace),
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(AppDimens.smallSpace)),
            child: Text(
              controller.isGradient.value ? AppString.gradient : AppString.solid,
              style: TextStyle(color: Colors.white, fontSize: AppDimens.mediumFontSpace, fontWeight: FontWeight.bold),
            ))),
      ),
      body: Container(
        color: Colors.white,
        child: Obx(() => InkWell(
            splashColor: Colors.white,
            onTap: () {
              if (controller.isGradient.value) {
                controller.makeGradientColor();
              } else {
                controller.makeSolidColor();
              }
            },
            child: Container(
              margin: EdgeInsets.all(AppDimens.mediumSpace),
              decoration: BoxDecoration(
                  color: !controller.isGradient.value ? controller.randomColor.value : null,
                  gradient: controller.isGradient.value ? controller.gradient.value : null,
                  borderRadius: BorderRadius.circular(AppDimens.mediumSpace)),
              child: Center(
                child: Text(AppString.helloThere,
                    style: TextStyle(color: Colors.black, fontSize: AppDimens.xMediumFontSpace, fontWeight: FontWeight.bold)),
              ),
            ))),
      ),
    );
  }
}
