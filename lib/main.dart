import 'package:flutter/material.dart';
import 'package:flutter_application_1/Routes/pages.dart';
import 'package:flutter_application_1/Routes/routes.dart';
import 'package:flutter_application_1/login_page.dart';
import 'package:flutter_application_1/pages/calculator_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: AppRoutes.main,
      getPages: AppPages.pages,
    );
  }
}

