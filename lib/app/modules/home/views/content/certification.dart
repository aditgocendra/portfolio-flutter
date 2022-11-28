import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pdfx/pdfx.dart';
import '../../../../core/utility/screen_size_util.dart';
import '../../controllers/certification_controller.dart';
import '../../../../core/constant/values.dart';

class Certification extends GetView<CertificationController> {
  const Certification({super.key});

  @override
  Widget build(BuildContext context) {
    int crossAxis = 4;

    if (UtilityScreenSize().isSmall(context)) {
      crossAxis = 1;
    }

    if (UtilityScreenSize().isMedium(context)) {
      crossAxis = 2;
    }

    if (UtilityScreenSize().isLarge(context)) {
      crossAxis = 4;
    }

    return GridView.builder(
      padding: EdgeInsets.only(
        top: 16,
        right: UtilityScreenSize().isLarge(context) ? 28 : 0,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxis,
        crossAxisSpacing: 10,
        mainAxisSpacing: 24,
        childAspectRatio: 1.5,
      ),
      itemCount: listCertificated.length,
      itemBuilder: (context, index) {
        controller.listAnimatedCertificated.add({
          'opacity_text': 0,
          'opacity_image': 1,
        });
        return InkWell(
          onTap: () {
            controller.pdfController = PdfController(
              document: PdfDocument.openAsset(listCertificated[index]['pdf']),
            );
            showDialog(
              context: context,
              builder: (context) => DialogDetailCert(
                pdfController: controller.pdfController,
              ),
            );
          },
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onHover: (value) {
            if (value) {
              controller.listAnimatedCertificated[index]['opacity_text'] = 1;
              controller.listAnimatedCertificated[index]['opacity_image'] = 0.5;
              controller.update();
              return;
            }
            controller.listAnimatedCertificated[index]['opacity_text'] = 0;
            controller.listAnimatedCertificated[index]['opacity_image'] = 1;
            controller.update();
          },
          child: GetBuilder(
            init: controller,
            builder: (_) {
              return Stack(
                children: [
                  AnimatedOpacity(
                    duration: const Duration(milliseconds: 300),
                    opacity: controller.listAnimatedCertificated[index]
                        ['opacity_image'],
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(24),
                      child: Image.asset(
                        listCertificated[index]['image'],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: AnimatedOpacity(
                        duration: const Duration(milliseconds: 300),
                        opacity: controller.listAnimatedCertificated[index]
                            ['opacity_text'],
                        child: Text(
                          listCertificated[index]['theme'],
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              );
            },
          ),
        );
      },
    );
  }
}

class DialogDetailCert extends StatelessWidget {
  final PdfController pdfController;
  const DialogDetailCert({
    required this.pdfController,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: SizedBox(
        width: 1280,
        height: 700,
        child: PdfView(
          scrollDirection: Axis.vertical,
          controller: pdfController,
        ),
      ),
    );
  }
}
