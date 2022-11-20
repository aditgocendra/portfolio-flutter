import 'package:get/get.dart';
import 'package:portfolio/app/data/service/mail_js_service.dart';

class ServiceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MailJSService>(
      () => MailJSServiceImpl(),
    );
  }
}
