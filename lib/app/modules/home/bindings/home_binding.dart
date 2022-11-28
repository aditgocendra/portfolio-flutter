import 'package:get/get.dart';
import 'package:portfolio/app/data/repository/email_sender_repository.dart';
import 'package:portfolio/app/modules/home/controllers/certification_controller.dart';
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
    Get.lazyPut<CertificationController>(
      () => CertificationController(),
    );
    Get.lazyPut<EmailSenderRepository>(
      () => EmailSenderRepositoryImpl(),
    );
  }
}
