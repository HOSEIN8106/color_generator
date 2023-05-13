import 'package:color_generator/presentation/view/routes/app_routes.dart';
import 'package:get/get.dart';

class SplashPageController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(seconds: 2), () => Get.offAllNamed(AppRoutes.MAIN_PAGE));
  }
}
