import 'package:flutter/material.dart';
import 'package:portfolio/app/core/constant/color_constant.dart';

class Education extends StatelessWidget {
  const Education({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 32),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: 1050,
              height: 760,
              decoration: BoxDecoration(
                color: secondaryLightColor,
                borderRadius: BorderRadius.circular(64),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 870,
              height: 610,
              decoration: BoxDecoration(
                color: secondaryPrimaryColor,
                borderRadius: BorderRadius.circular(64),
              ),
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.all(32),
                    height: 80,
                    decoration: BoxDecoration(
                      color: secondaryLightColor,
                      borderRadius: BorderRadius.circular(32),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(32),
                    height: 80,
                    decoration: BoxDecoration(
                      color: secondaryLightColor,
                      borderRadius: BorderRadius.circular(32),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(32),
                    height: 80,
                    decoration: BoxDecoration(
                      color: secondaryLightColor,
                      borderRadius: BorderRadius.circular(32),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(32),
                    height: 80,
                    decoration: BoxDecoration(
                      color: secondaryLightColor,
                      borderRadius: BorderRadius.circular(32),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
