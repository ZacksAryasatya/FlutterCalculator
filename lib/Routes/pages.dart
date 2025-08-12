import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/Routes/routes.dart';
import 'package:flutter_application_1/pages/calculator_page.dart';
import 'package:flutter_application_1/pages/football_edit_page.dart';
import 'package:flutter_application_1/pages/football_page.dart';
import 'package:get/route_manager.dart';
import 'package:get/get.dart';

class AppPages{
  //list / array yang isinya kumpulan page/ui kita

  static final pages = [
    GetPage(name: AppRoutes.calculator, page: () => CalculatorPage()),
    GetPage(name: AppRoutes.footballplayers, page: () => FootballPage()),
    GetPage(name: AppRoutes.footballeditplayers, page: () => FootballEditPage()),
  ];
    

  
  
}