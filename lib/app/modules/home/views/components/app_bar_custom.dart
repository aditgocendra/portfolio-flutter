import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/core/utility/screen_size_util.dart';
import 'package:unicons/unicons.dart';
import '../../../../core/constant/values.dart';
import '../../../../core/constant/color_constant.dart';
import '../../controllers/home_controller.dart';

class AppBarCustom extends StatelessWidget {
  AppBarCustom({super.key});

  final controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: UtilityScreenSize().isLarge(context) ? 56 : 28,
        top: 20,
        right: 18,
      ),
      child: UtilityScreenSize().isLarge(context)
          ? MenuHorizontalTop(controller: controller)
          : MenuSideTopbar(controller: controller),
    );
  }
}

class MenuHorizontalTop extends StatelessWidget {
  const MenuHorizontalTop({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
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
          width: 720,
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
    );
  }
}

class MenuSideTopbar extends StatelessWidget {
  final HomeController controller;

  const MenuSideTopbar({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: IconButton(
            onPressed: () {
              if (!controller.scaffoldKey.currentState!.isDrawerOpen) {
                controller.scaffoldKey.currentState!.openDrawer();
              }
            },
            icon: const Icon(
              UniconsLine.subject,
            ),
          ),
        ),
        Align(
          alignment: UtilityScreenSize().isVerySmall(context)
              ? Alignment.centerRight
              : Alignment.center,
          child: Text(
            UtilityScreenSize().isVerySmall(context)
                ? 'Aditya'
                : 'Aditya Gocendra',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
