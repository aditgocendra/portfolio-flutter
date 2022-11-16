import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/app/core/constant/color_constant.dart';
import 'package:portfolio/app/core/constant/value.dart';
import 'package:unicons/unicons.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
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
            children: [
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
                      child: const Icon(
                        UniconsLine.android_alt,
                        size: 200,
                        color: primaryColor,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(32),
                      child: ElevatedButton(
                        onPressed: () {},
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
                      child: const Icon(
                        UniconsLine.globe,
                        size: 200,
                        color: primaryColor,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(32),
                      child: ElevatedButton(
                        onPressed: () {},
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
                      child: const Icon(
                        UniconsLine.game_structure,
                        size: 200,
                        color: primaryColor,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(32),
                      child: ElevatedButton(
                        onPressed: () {},
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
            ],
          ),
        )
        // Padding(
        //   padding: const EdgeInsets.only(
        //     right: 32,
        //   ),
        //   child: GridView.builder(
        //     primary: false,
        //     shrinkWrap: true,
        //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //       crossAxisCount: 3,
        //       crossAxisSpacing: 100,
        //       childAspectRatio: 0.8,
        //     ),
        //     itemCount: 3,
        //     itemBuilder: (context, index) => Container(
        //       decoration: BoxDecoration(
        //         color: secondaryPrimaryColor,
        //         borderRadius: BorderRadius.circular(32),
        //       ),
        //     ),
        //   ),
        // )
      ],
    );
  }
}
