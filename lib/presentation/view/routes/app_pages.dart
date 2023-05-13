import 'package:color_generator/binding/main_page_binding.dart';
import 'package:color_generator/binding/splash_page_binding.dart';
import 'package:color_generator/presentation/view/pages/main_page.dart';
import 'package:color_generator/presentation/view/pages/splash_page.dart';
import 'package:color_generator/presentation/view/routes/app_routes.dart';
import 'package:get/get.dart';

class AppPages{
  static final pages = [
    GetPage(name: AppRoutes.INITIAL, page: () =>  SplashPage(), binding: SplashPageBinding()),
    GetPage(name: AppRoutes.MAIN_PAGE, page: () => MainPage(), binding: MainPageBinding()),
  ];
}