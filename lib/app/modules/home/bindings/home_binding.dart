import 'package:get/get.dart';
import '../controllers/about_controller.dart';
import '../controllers/contact_controller.dart';
import '../controllers/education_controller.dart';
import '../controllers/portfolio_controller.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<ContactController>(
      () => ContactController(),
    );
    Get.lazyPut<PortfolioController>(
      () => PortfolioController(),
    );
    Get.lazyPut<EducationController>(
      () => EducationController(),
    );
    Get.lazyPut<AboutController>(
      () => AboutController(),
    );
  }
}
