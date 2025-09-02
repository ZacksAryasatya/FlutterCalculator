import 'package:flutter/material.dart';
import 'package:flutter_application_1/Routes/routes.dart';
import 'package:flutter_application_1/controllers/football_controller.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class FootballPage extends StatelessWidget {
  FootballPage({super.key});

  final FootballController footballController = Get.put(FootballController());
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(title: Text("My Football Players")),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Obx(
          () => ListView.builder(
            itemCount: footballController.players.length,
            itemBuilder: (context, index) {
              final player = footballController.players[index];
              return Card(
                elevation: 3,
                margin: EdgeInsets.symmetric(vertical: 8),
                child: ListTile(
                  contentPadding: EdgeInsets.all(10),
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(player.profileImage),
                  ),
                  title: Text(
                    player.name,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 4),
                      Text(player.position, style: TextStyle(fontSize: 14)),
                      Text("#${player.nomorPunggung}", style: TextStyle(fontSize: 14, color: Colors.grey[600])),
                    ],
                  ),
                  trailing: Icon(Icons.edit, color: Colors.blue),
                  onTap: () {
                    Get.toNamed(
                      AppRoutes.footballeditplayers,
                      arguments: index,
                    );
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
