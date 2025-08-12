import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/controllers/football_controller.dart';
import 'package:get/get.dart';

class FootballEditController extends GetxController{
  final nameController = TextEditingController();
  final positionController = TextEditingController();
  final nomorPunggungController = TextEditingController();
  int? playerIndex;

  final FootballController footballController = Get.find();

  @override
  void onInit() {
    super.onInit();
    final args = Get.arguments;
    playerIndex = args["index"];
    final player = args["player"] as Player;

    nameController.text = player.name;
    positionController.text = player.position;
    nomorPunggungController.text = player.nomorPunggung.toString();
  }

  void savePlayer() {
    if (playerIndex != null) {
      footballController.players[playerIndex!] = Player(
        profileImage: "assets/ronaldo.jpg", 
        name: nameController.text,
        position: positionController.text,
        nomorPunggung: int.tryParse(nomorPunggungController.text) ?? 0,
      );
      Get.back();
    }
  }
}