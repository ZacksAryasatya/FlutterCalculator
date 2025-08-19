import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage("assets/ronaldo.jpg"),
            ),
            SizedBox(height: 30),
            Text(
              "User Profile",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text("Nama : Jamal"),
            Text("Email : jamal@gmail.com"),
          ],
        ),
      ),
    );
  }
}
