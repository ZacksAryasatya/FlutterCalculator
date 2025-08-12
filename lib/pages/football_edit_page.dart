import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/football_edit_controller.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';

class FootballEditPage extends StatelessWidget {
  FootballEditPage({super.key});
  final FootballEditController editController = Get.put(
    FootballEditController(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Edit Player")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: editController.nameController,
              decoration: InputDecoration(labelText: "Name"),
            ),
            SizedBox(height: 10),
            TextField(
              controller: editController.positionController,
              decoration: InputDecoration(labelText: "Position"),
            ),
            SizedBox(height: 10),
            TextField(
              controller: editController.nomorPunggungController,
              decoration: InputDecoration(labelText: "Nomor Punggung"),
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly, 
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: editController.savePlayer,
              child: Text("Save"),
            ),
          ],
        ),
      ),
    );
  }
}
