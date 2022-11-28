import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/core/utility/screen_size_util.dart';
import '../../controllers/home_controller.dart';
import '../../../../core/constant/color_constant.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Content
        Row(
          children: [
            Expanded(
              child: LeftContent(),
            ),
            if (UtilityScreenSize().isLarge(context))
              const Expanded(
                child: RighContent(),
              )
          ],
        ),
      ],
    );
  }
}

class RighContent extends StatelessWidget {
  const RighContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        'assets/images/profile_picture.png',
        width: 400,
      ),
    );
  }
}

class LeftContent extends StatelessWidget {
  LeftContent({
    Key? key,
  }) : super(key: key);

  final controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    final sizeScreenWidth = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: UtilityScreenSize().isLarge(context)
              ? sizeScreenWidth / 16
              : sizeScreenWidth / 8,
          child: Text(
            'Hi There,',
            style: TextStyle(
              fontSize: UtilityScreenSize().isLarge(context)
                  ? sizeScreenWidth / 16
                  : sizeScreenWidth / 8,
              fontWeight: FontWeight.bold,
              height: 1,
            ),
          ),
        ),
        if (UtilityScreenSize().isLarge(context) ||
            UtilityScreenSize().isMedium(context))
          SizedBox(
            height: UtilityScreenSize().isLarge(context)
                ? sizeScreenWidth / 20
                : sizeScreenWidth / 10,
            child: Row(
              children: [
                Text(
                  "I'm ",
                  style: TextStyle(
                    fontSize: UtilityScreenSize().isLarge(context)
                        ? sizeScreenWidth / 32
                        : sizeScreenWidth / 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Aditya Gocendra",
                  style: TextStyle(
                    fontSize: UtilityScreenSize().isLarge(context)
                        ? sizeScreenWidth / 32
                        : sizeScreenWidth / 14,
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                  ),
                )
              ],
            ),
          ),
        if (UtilityScreenSize().isSmall(context))
          Wrap(
            children: [
              Text(
                "I'm ",
                style: TextStyle(
                  fontSize: UtilityScreenSize().isLarge(context)
                      ? sizeScreenWidth / 32
                      : sizeScreenWidth / 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Aditya Gocendra",
                style: TextStyle(
                  fontSize: UtilityScreenSize().isLarge(context)
                      ? sizeScreenWidth / 32
                      : sizeScreenWidth / 14,
                  fontWeight: FontWeight.bold,
                  color: primaryColor,
                ),
              )
            ],
          ),
        const SizedBox(
          height: 16,
        ),
        if (UtilityScreenSize().isMedium(context) ||
            UtilityScreenSize().isLarge(context))
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  controller.tabNavBarController.index = 3;
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryLightColor,
                  shape: const StadiumBorder(),
                  minimumSize: const Size(225, 60),
                ),
                child: const Text("Portfolio"),
              ),
              const SizedBox(
                width: 24,
              ),
              OutlinedButton(
                onPressed: () {
                  controller.tabNavBarController.index = 5;
                },
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(
                    color: primaryColor,
                  ),
                  shape: const StadiumBorder(),
                  minimumSize: const Size(225, 60),
                ),
                child: const Text(
                  'Contact',
                  style: TextStyle(color: primaryColor),
                ),
              ),
            ],
          ),
        if (UtilityScreenSize().isSmall(context))
          ElevatedButton(
            onPressed: () {
              controller.tabNavBarController.index = 3;
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: primaryLightColor,
              shape: const StadiumBorder(),
              minimumSize: const Size.fromHeight(60),
            ),
            child: const Text("Portfolio"),
          ),
        if (UtilityScreenSize().isSmall(context))
          const SizedBox(
            height: 16,
          ),
        if (UtilityScreenSize().isSmall(context))
          OutlinedButton(
            onPressed: () {
              controller.tabNavBarController.index = 5;
            },
            style: OutlinedButton.styleFrom(
              side: const BorderSide(
                color: primaryColor,
              ),
              shape: const StadiumBorder(),
              minimumSize: const Size.fromHeight(60),
            ),
            child: const Text(
              'Contact',
              style: TextStyle(color: primaryColor),
            ),
          ),
      ],
    );
  }
}
