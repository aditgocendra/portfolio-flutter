import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/app/core/binding/initial_binding.dart';
import 'app/core/constant/color_constant.dart';

import 'app/routes/app_pages.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Aditya Gocendra",
      initialRoute: AppPages.initial,
      initialBinding: InitialBindings(),
      getPages: AppPages.routes,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
        canvasColor: secondaryPrimaryColor,
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme.apply(bodyColor: Colors.white),
        ),
      ),
    );
  }
}
