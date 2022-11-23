import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/core/constant/values.dart';
import '../../controllers/education_controller.dart';
import '../../../../core/constant/color_constant.dart';

class Education extends GetView<EducationController> {
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
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: listEducation.map((val) {
                    return ListTile(
                      title: Text(
                        val['institution'],
                        style: const TextStyle(
                          fontSize: 28,
                          color: primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        val['degree'],
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey.shade500,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      trailing: Text(
                        val["from_year"] + ' ~ ' + val["end_year"],
                        style: const TextStyle(fontSize: 18),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
