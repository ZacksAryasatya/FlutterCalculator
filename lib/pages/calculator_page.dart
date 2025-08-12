import 'package:flutter/material.dart';
import 'package:flutter_application_1/ReusableComponent/widget_textfield2.dart';
import 'package:flutter_application_1/Routes/routes.dart';
import 'package:flutter_application_1/controllers/calculator_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:flutter_application_1/ReusableComponent/widget_textfield.dart';
import 'package:flutter_application_1/ReusableComponent/widget_button.dart';

class CalculatorPage extends StatelessWidget {
  CalculatorPage({super.key});
  final CalculatorController calculatorController = Get.put(
    CalculatorController(),
  );

  get text => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Calculator")),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MyTextField(
              textEditingController: calculatorController.txtAngka1,
              labelText: "input angka 1",
              inputDecoration: InputDecoration(
                labelText: "Input Angka 1",
                border: OutlineInputBorder(),
              ),
            ),

            MyTextField(
              textEditingController: calculatorController.txtAngka2,
              labelText: "input angka 2",
              inputDecoration: InputDecoration(
                labelText: "Input Angka 2",
                border: OutlineInputBorder(),
              ),
            ),

            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                children: [
                  CustomButton(
                    text: "+",
                    textColor: Colors.blue,
                    onPressed: () {
                      calculatorController.tambah();
                    },
                  ),
                  CustomButton(
                    text: "-",
                    textColor: Colors.blue,
                    onPressed: () {
                      calculatorController.kurang();
                    },
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                children: [
                  CustomButton(
                    text: "X",
                    textColor: Colors.blue,
                    onPressed: () {
                      calculatorController.kali();
                    },
                  ),
                  CustomButton(
                    text: "/",
                    textColor: Colors.blue,
                    onPressed: () {
                      calculatorController.bagi();
                    },
                  ),
                ],
              ),
            ),
            Obx(() => Text("Hasil " + calculatorController.hasil.value)),
            CustomButton(
              text: "Move to football",
              textColor: Colors.green,
              onPressed: () {
                // calculatorController.txtAngka1.clear();
                // calculatorController.txtAngka2.clear();
                // calculatorController.hasil.value = "";
                Get.toNamed(AppRoutes.footballplayers);
              },
            ),
          ],
        ),
      ),
    );
  }
}
