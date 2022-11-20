import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PortfolioController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController tabPortfolioController;

  // Color
  List<Map<String, dynamic>> listAnimatedProject = [];
  @override
  void onInit() {
    tabPortfolioController = TabController(length: 3, vsync: this);

    tabPortfolioController.addListener(() {
      if (tabPortfolioController.indexIsChanging) {
        listAnimatedProject.clear();
      }
    });
    super.onInit();
  }
}
