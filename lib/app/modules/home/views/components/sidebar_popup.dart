import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/core/constant/color_constant.dart';
import 'package:portfolio/app/core/constant/values.dart';
import 'package:portfolio/app/modules/home/controllers/home_controller.dart';

class SidebarPopup extends StatelessWidget {
  SidebarPopup({super.key});
  final controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Drawer(
        backgroundColor: secondaryPrimaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: ListView(
          shrinkWrap: true,
          primary: false,
          children: [
            const DrawerHeader(
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Aditya Gocendra',
                  style: TextStyle(
                    fontSize: 20,
                    color: primaryColor,
                  ),
                ),
              ),
            ),
            Column(
              children: listMenu
                  .asMap()
                  .map(
                    (i, val) {
                      int indexNavActive = controller.tabNavBarController.index;
                      return MapEntry(
                        i,
                        ListTile(
                          onTap: () {
                            controller.tabNavBarController.index = i;
                            if (controller
                                .scaffoldKey.currentState!.isDrawerOpen) {
                              controller.scaffoldKey.currentState!
                                  .closeDrawer();
                            }
                          },
                          leading: Icon(
                            val['icon'],
                            color: indexNavActive == i
                                ? primaryColor
                                : Colors.white,
                            size: 20,
                          ),
                          title: Text(
                            val['menu'],
                            style: TextStyle(
                              color: indexNavActive == i
                                  ? primaryColor
                                  : Colors.white,
                            ),
                          ),
                        ),
                      );
                    },
                  )
                  .values
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
