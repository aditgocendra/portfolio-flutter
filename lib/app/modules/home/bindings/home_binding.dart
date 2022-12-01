import 'package:get/get.dart';
import '../controllers/certification_controller.dart';
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
    Get.lazyPut<PortfolioController>(
      () => PortfolioController(),
    );
    Get.lazyPut<EducationController>(
      () => EducationController(),
    );
    Get.lazyPut<AboutController>(
      () => AboutController(),
    );
    Get.lazyPut<CertificationController>(
      () => CertificationController(),
    );
    Get.lazyPut<ContactController>(
      () => ContactController(),
    );
  }
}
