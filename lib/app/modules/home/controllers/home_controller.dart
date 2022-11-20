import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/core/constant/values.dart';
import 'package:portfolio/app/core/utility/sender_mail_dart.dart';

class HomeController extends GetxController with GetTickerProviderStateMixin {
  late TabController tabNavBarController;
  late TabController tabRecentWorkController;

  // Contact Form Controller
  final TextEditingController textNameEdt = TextEditingController();
  final TextEditingController textEmailEdt = TextEditingController();
  final TextEditingController textSubjectEdt = TextEditingController();
  final TextEditingController textMessageEdt = TextEditingController();

  // Color
  List<Map<String, dynamic>> listAnimatedProject = [];

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

    await UtilitySenderMail().emailSender(
      fromName: name,
      email: email,
      subject: subject,
      message: message,
    );
    textNameEdt.clear();
    textEmailEdt.clear();
    textSubjectEdt.clear();
    textMessageEdt.clear();
  }

  @override
  void onInit() {
    super.onInit();

    tabNavBarController = TabController(length: listMenu.length, vsync: this);
    tabRecentWorkController = TabController(length: 3, vsync: this);

    tabRecentWorkController.addListener(() {
      if (tabRecentWorkController.indexIsChanging) {
        listAnimatedProject.clear();
      }
    });
  }
}
