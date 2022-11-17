import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with GetTickerProviderStateMixin {
  late TabController tabNavBarController;
  late TabController tabRecentWorkController;

  @override
  void onInit() {
    super.onInit();

    tabNavBarController = TabController(length: 5, vsync: this);
    tabRecentWorkController = TabController(length: 3, vsync: this);
  }
}
