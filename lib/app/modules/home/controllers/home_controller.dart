import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/core/constant/values.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController tabNavBarController;

  final isPlayAnimText = true.obs;

  @override
  void onInit() {
    super.onInit();

    tabNavBarController = TabController(length: listMenu.length, vsync: this);
  }
}
