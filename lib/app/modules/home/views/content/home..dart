import 'package:flutter/material.dart';
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
          children: const [
            Expanded(
              child: LeftContent(),
            ),
            Expanded(
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
  const LeftContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Hi There,",
          style: TextStyle(
            fontSize: 72,
            fontWeight: FontWeight.bold,
            height: 1,
          ),
        ),
        Row(
          children: const [
            Text(
              "I'm ",
              style: TextStyle(
                fontSize: 52,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Aditya Gocendra",
              style: TextStyle(
                fontSize: 52,
                fontWeight: FontWeight.bold,
                color: primaryColor,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            ElevatedButton(
              onPressed: () {},
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
              onPressed: () {},
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
