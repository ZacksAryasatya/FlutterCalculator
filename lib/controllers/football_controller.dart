import 'package:flutter_application_1/models/player_models.dart';
import 'package:get/get.dart';

class FootballController extends GetxController {
  var players = <PlayerFootball>[
    PlayerFootball(
      profileImage: "assets/ronaldo.jpg",
      name: "Jamal",
      position: "Striker",
      nomorPunggung: 9,
    ),
    PlayerFootball(
      profileImage: "assets/ronaldo.jpg",
      name: "Jamil",
      position: "Striker",
      nomorPunggung: 8,
    ),
  ].obs; //.obs karena ini yang akan di tampilkan
}
