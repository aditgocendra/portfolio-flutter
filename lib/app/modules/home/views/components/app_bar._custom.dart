import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/core/constant/values.dart';

import '../../../../core/constant/color_constant.dart';
import '../../controllers/home_controller.dart';

class AppBarCustom extends StatelessWidget {
  AppBarCustom({super.key});

  final controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 56,
        top: 20,
        right: 18,
      ),
      child: Row(
        children: [
          const Text(
            'Aditya Gocendra',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          SizedBox(
            width: 650,
            child: TabBar(
              indicator: const ShapeDecoration(
                shape: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: primaryColor,
                    width: 2,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
              padding: EdgeInsets.zero,
              indicatorColor: Colors.black,
              labelColor: primaryColor,
              unselectedLabelColor: Colors.white,
              controller: controller.tabNavBarController,
              tabs: listMenu.map(
                (m) {
                  return Tab(
                    text: m['menu'],
                  );
                },
              ).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
