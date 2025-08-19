import 'package:flutter/material.dart';
import 'package:flutter_application_1/ReusableComponent/widget_tf_kalku.dart';
import 'package:flutter_application_1/controllers/calculator_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
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
      appBar: AppBar(title: Text("Calculator")),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 10),
            TextFieldKalku(
              textEditingController: calculatorController.txtAngka1,
              labelText: "Input Angka 1",
            ),

            SizedBox(height: 10),
            TextFieldKalku(
              textEditingController: calculatorController.txtAngka2,
              labelText: "Input Angka 2",
            ),

            Container(
              margin: EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: CustomButton(
                          text: "+",
                          textColor: Colors.blue,
                          onPressed: () {
                            if (calculatorController.txtAngka1.text.isEmpty ||
                                calculatorController.txtAngka2.text.isEmpty) {
                              Get.snackbar(
                                "Peringatan",
                                "Harus mengisi kedua field terlebih dahulu",
                                snackPosition: SnackPosition.TOP,
                                backgroundColor: Colors.redAccent,
                                colorText: Colors.white,
                              );
                            } else {
                              calculatorController.tambah();
                            }
                          },
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: CustomButton(
                          text: "-",
                          textColor: Colors.blue,
                          onPressed: () {
                            if (calculatorController.txtAngka1.text.isEmpty ||
                                calculatorController.txtAngka2.text.isEmpty) {
                              Get.snackbar(
                                "Peringatan",
                                "Harus mengisi kedua field terlebih dahulu",
                                snackPosition: SnackPosition.TOP,
                                backgroundColor: Colors.redAccent,
                                colorText: Colors.white,
                              );
                            } else {
                              calculatorController.kurang();
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: CustomButton(
                          text: "X",
                          textColor: Colors.blue,
                          onPressed: () {
                            if (calculatorController.txtAngka1.text.isEmpty ||
                                calculatorController.txtAngka2.text.isEmpty) {
                              Get.snackbar(
                                "Peringatan",
                                "Harus isi kedua inputannya dulu!",
                                snackPosition: SnackPosition.TOP,
                                backgroundColor: Colors.redAccent,
                                colorText: Colors.white,
                              );
                            } else {
                              calculatorController.kali();
                            }
                          },
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: CustomButton(
                          text: "/",
                          textColor: Colors.blue,
                          onPressed: () {
                            if (calculatorController.txtAngka1.text.isEmpty ||
                                calculatorController.txtAngka2.text.isEmpty) {
                              Get.snackbar(
                                "Peringatan",
                                "Harus mengisi kedua field terlebih dahulu",
                                snackPosition: SnackPosition.TOP,
                                backgroundColor: Colors.redAccent,
                                colorText: Colors.white,
                              );
                            } else {
                              calculatorController.bagi();
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Obx(() => Text("Hasil " + calculatorController.hasil.value)),
            // CustomButton(
            //   text: "Move to football",
            //   textColor: Colors.green,
            //   onPressed: () {
            //     // calculatorController.txtAngka1.clear();
            //     // calculatorController.txtAngka2.clear();
            //     // calculatorController.hasil.value = "";
            //     Get.toNamed(AppRoutes.footballplayers);
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
