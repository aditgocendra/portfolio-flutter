import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/data/repository/email_sender_repository.dart';

class ContactController extends GetxController {
  late TextEditingController textNameEdt;
  late TextEditingController textEmailEdt;
  late TextEditingController textSubjectEdt;
  late TextEditingController textMessageEdt;

  List<Map<String, dynamic>> listAnimatedProject = [];

  // Repository
  final repoEmailSender = Get.find<EmailSenderRepository>();

  Future sendEmail() async {
    String name = textNameEdt.text.trim();
    String email = textEmailEdt.text.trim();
    String subject = textSubjectEdt.text.trim();
    String message = textMessageEdt.text.trim();

    if (name.isEmpty) {
      return;
    }

    if (email.isEmpty) {
      return;
    }

    if (subject.isEmpty) {
      return;
    }

    if (message.isEmpty) {
      return;
    }

    if (!GetUtils.isEmail(email)) {
      return;
    }

    final result = await repoEmailSender.sendEmail(
      name,
      email,
      subject,
      message,
    );

    if (result.isLeft) {
      return;
    }

    textNameEdt.clear();
    textEmailEdt.clear();
    textSubjectEdt.clear();
    textMessageEdt.clear();
  }

  @override
  void onInit() {
    textNameEdt = TextEditingController();
    textEmailEdt = TextEditingController();
    textSubjectEdt = TextEditingController();
    textMessageEdt = TextEditingController();
    print('init');
    super.onInit();
  }

  @override
  void onClose() {
    textNameEdt.dispose();
    textEmailEdt.dispose();
    textSubjectEdt.dispose();
    textMessageEdt.dispose();
    super.onClose();
  }
}
