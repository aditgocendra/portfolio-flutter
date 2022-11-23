import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/modules/home/controllers/about_controller.dart';
import 'package:portfolio/app/modules/home/controllers/portfolio_controller.dart';
import '../../../../core/constant/color_constant.dart';
import '../../../../core/constant/values.dart';
import '../../controllers/home_controller.dart';

class About extends GetView<AboutController> {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    final homeController = Get.find<HomeController>();
    final portfolioController = Get.find<PortfolioController>();
    final sizeScreenWidth = MediaQuery.of(context).size.width;
    int crossAxis = 3;
    double heightIcon = sizeScreenWidth / 10.5;

    if (sizeScreenWidth < 650) {
      crossAxis = 1;
      heightIcon = sizeScreenWidth / 4.5;
    } else if (sizeScreenWidth < 1000) {
      crossAxis = 2;
      heightIcon = sizeScreenWidth / 8.5;
    } else {
      crossAxis = 3;
      heightIcon = sizeScreenWidth / 10.5;
    }

    return ListView(
      children: [
        const Text(
          about,
          style: TextStyle(
            fontSize: 20,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 100,
        ),
        GridView.builder(
          padding: EdgeInsets.only(
            right: sizeScreenWidth > 1000 ? 32 : 0,
          ),
          shrinkWrap: true,
          primary: false,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxis,
            childAspectRatio: 1.1,
            mainAxisSpacing: 24,
          ),
          itemCount: listAboutMenu.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 32),
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
                      listAboutMenu[index]['assets'],
                      color: primaryColor,
                      height: heightIcon,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(32),
                    child: ElevatedButton(
                      onPressed: () {
                        homeController.tabNavBarController.index = 3;
                        portfolioController.tabPortfolioController.index =
                            index;
                      },
                      style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                        minimumSize: Size.fromHeight(
                          sizeScreenWidth > 650 ? 70 : 55,
                        ),
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
            );
          },
        ),
      ],
    );
  }
}
