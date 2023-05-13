import 'package:color_generator/presentation/controller/main_page_controller.dart';
import 'package:get/get.dart';

class MainPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainPageController());
  }
}
