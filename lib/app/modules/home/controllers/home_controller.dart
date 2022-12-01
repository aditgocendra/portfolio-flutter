import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/core/constant/values.dart';

import '../../../data/repository/email_sender_repository.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController tabNavBarController;

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  TextEditingController textNameEdt = TextEditingController();
  TextEditingController textEmailEdt = TextEditingController();
  TextEditingController textSubjectEdt = TextEditingController();
  TextEditingController textMessageEdt = TextEditingController();

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
      Get.defaultDialog(
        title: "Try Again",
        middleText: result.left.message,
      );
      return;
    }

    textNameEdt.clear();
    textEmailEdt.clear();
    textSubjectEdt.clear();
    textMessageEdt.clear();
  }

  @override
  void onInit() {
    super.onInit();

    textNameEdt = TextEditingController();
    textEmailEdt = TextEditingController();
    textSubjectEdt = TextEditingController();
    textMessageEdt = TextEditingController();

    tabNavBarController = TabController(length: listMenu.length, vsync: this);
  }
}
