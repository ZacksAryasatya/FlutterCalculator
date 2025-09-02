import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/controllers/football_controller.dart';
import 'package:flutter_application_1/models/player_models.dart';
import 'package:get/get.dart';

class FootballEditController extends GetxController{
  late int index;
  late FootballController footballController;

  final TextEditingController nameController = TextEditingController();
  final TextEditingController positionController = TextEditingController();
  final TextEditingController nomorPunggungController = TextEditingController();

  @override
 void onInit() {
    super.onInit();
    index = Get.arguments as int;
    print("selected edit data: "+index.toString());
    footballController = Get.find<FootballController>();
    final player = footballController.players[index];
    print("selected edit from list data : "+footballController.players[index].name);
    nameController.text = player.name;
    positionController.text = player.position;
    nomorPunggungController.text = player.nomorPunggung.toString();
  }

  void savePlayer() {
    footballController.players[index] = PlayerFootball(
      profileImage: "assets/ronaldo.jpg",
      name: nameController.text,
      position: positionController.text,
      nomorPunggung: int.tryParse(nomorPunggungController.text) ?? 0,
    );
    Get.back();
  }
}