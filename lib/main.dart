import 'dart:js';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:sample_get_cli/app/modules/home/controllers/MenuController.dart';
import 'package:sample_get_cli/constants.dart';
import 'app/modules/home/views/main/main_screen.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      //title: "Application",
      // initialRoute: AppPages.INITIAL,
      // getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Admin Panel',
      // theme: ThemeData.light().copyWith(primaryColor: bgColor),
      darkTheme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
        // textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
        //     .apply(bodyColor: Colors.white),
        canvasColor: secondaryColor,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => MenuController(),
          ),
        ],
        child: MainScreen(),
      ),
    ),
  );
}
