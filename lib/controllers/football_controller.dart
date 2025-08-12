import 'package:get/get.dart';

class Player {
  final String profileImage;
  final String name;
  final String position;
  final int nomorPunggung;

  Player({
    required this.profileImage,
    required this.name,
    required this.position,
    required this.nomorPunggung,
  });
}

class FootballController extends GetxController {
  var players = <Player>[
    Player(
      profileImage: "assets/ronaldo.jpg",
      name: "Jamal",
      position: "Striker",
      nomorPunggung: 9,
    ),
    Player(
      profileImage: "assets/ronaldo.jpg",
      name: "Jamil",
      position: "Striker",
      nomorPunggung: 8,
    ),
    Player(
      profileImage: "assets/ronaldo.jpg",
      name: "Jamul",
      position: "Striker",
      nomorPunggung: 7,
    ),
    Player(
      profileImage: "assets/ronaldo.jpg",
      name: "Jamol",
      position: "Striker",
      nomorPunggung: 6,
    ),
  ].obs; //.obs karena ini yang akan di tampilkan
}
