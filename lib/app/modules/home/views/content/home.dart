import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
        'assets/images/image_profile.png',
        width: 320,
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 96,
          child: AnimatedTextKit(
            isRepeatingAnimation: false,
            onFinished: () => controller.isPlayAnimText.toggle(),
            animatedTexts: [
              TypewriterAnimatedText(
                "Hi There,",
                speed: const Duration(milliseconds: 300),
                textStyle: const TextStyle(
                  fontSize: 96,
                  fontWeight: FontWeight.bold,
                  height: 1,
                ),
              ),
            ],
          ),
        ),
        Row(
          children: const [
            Text(
              "I'm ",
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Aditya Gocendra",
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
                color: primaryColor,
              ),
            )
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            ElevatedButton(
              onPressed: () {
                controller.tabNavBarController.index = 3;
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryColor,
                shape: const StadiumBorder(),
                minimumSize: const Size(210, 50),
              ),
              child: const Text("Portfolio"),
            ),
            const SizedBox(
              width: 24,
            ),
            OutlinedButton(
              onPressed: () {
                controller.tabNavBarController.index = 4;
              },
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  color: primaryColor,
                ),
                shape: const StadiumBorder(),
                minimumSize: const Size(210, 50),
              ),
              child: const Text(
                'Contact',
                style: TextStyle(color: primaryColor),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
