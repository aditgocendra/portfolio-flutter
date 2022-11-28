import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../../core/utility/screen_size_util.dart';
import '../../../../core/constant/color_constant.dart';
import '../../../../core/constant/values.dart';
import '../../controllers/about_controller.dart';
import '../../controllers/portfolio_controller.dart';
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

    if (UtilityScreenSize().isSmall(context)) {
      crossAxis = 1;
      heightIcon = sizeScreenWidth / 5.8;
    } else if (UtilityScreenSize().isMedium(context)) {
      crossAxis = 2;
      heightIcon = sizeScreenWidth / 8.8;
    } else {
      crossAxis = 3;
      heightIcon = sizeScreenWidth / 9;
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
        if (!UtilityScreenSize().isVerySmall(context))
          GridView.builder(
            padding: EdgeInsets.only(
              right: UtilityScreenSize().isSmall(context) ? 0 : 32,
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
              return CardProject(
                heightIcon: heightIcon,
                index: index,
                homeController: homeController,
                portfolioController: portfolioController,
              );
            },
          ),
      ],
    );
  }
}

class CardProject extends StatelessWidget {
  final double heightIcon;
  final int index;
  final HomeController homeController;
  final PortfolioController portfolioController;

  const CardProject({
    Key? key,
    required this.heightIcon,
    required this.index,
    required this.homeController,
    required this.portfolioController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                portfolioController.tabPortfolioController.index = index;
              },
              style: ElevatedButton.styleFrom(
                shape: const StadiumBorder(),
                minimumSize: Size.fromHeight(
                  UtilityScreenSize().isSmall(context) ? 50 : 70,
                ),
                shadowColor: Colors.transparent,
                backgroundColor: secondaryLightColor,
              ),
              child: Text(
                "Checkout",
                style: TextStyle(
                  color: primaryColor,
                  fontSize: UtilityScreenSize().isSmall(context) ? 16 : 20,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
