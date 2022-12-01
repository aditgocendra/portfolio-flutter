import 'package:get/get.dart';

import '../../data/repository/email_sender_repository.dart';

class RepositoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EmailSenderRepository>(
      () => EmailSenderRepositoryImpl(),
    );
  }
}
