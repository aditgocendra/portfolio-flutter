import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/modules/home/controllers/home_controller.dart';
import '../../../../core/constant/color_constant.dart';
import '../../../../core/constant/values.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Text(
          about,
          style: TextStyle(
            fontSize: 20,
          ),
          textAlign: TextAlign.center,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 32),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: listAboutMenu
                .asMap()
                .map(
                  (index, val) => MapEntry(
                    index,
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 32),
                      width: 430,
                      height: 481,
                      decoration: BoxDecoration(
                        color: secondaryPrimaryColor,
                        borderRadius: BorderRadius.circular(64),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 48),
                            child: SvgPicture.asset(
                              val['assets'],
                              color: primaryColor,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(32),
                            child: ElevatedButton(
                              onPressed: () {
                                controller.tabNavBarController.index = 3;
                                controller.tabRecentWorkController.index =
                                    index;
                              },
                              style: ElevatedButton.styleFrom(
                                shape: const StadiumBorder(),
                                minimumSize: const Size.fromHeight(70),
                                shadowColor: Colors.transparent,
                                backgroundColor: secondaryLightColor,
                              ),
                              child: const Text(
                                "Checkout",
                                style: TextStyle(
                                  color: primaryColor,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
                .values
                .toList(),
          ),
        )
      ],
    );
  }
}
