import 'package:flutter/material.dart';
import 'package:flutter_application_1/ReusableComponent/widget_button.dart';
import 'package:flutter_application_1/ReusableComponent/widget_textfield.dart';
import 'package:flutter_application_1/hone_page.dart';
import 'package:flutter_application_1/register_page.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String statuslogin = "Login status";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page")),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                'assets/EnderNode-Logo-2.png',
                width: 100,
                height: 100,
              ),
            ),
            Center(
              child: Text(
                "Login To Your Account",
                style: TextStyle(
                  fontSize: 25,
                  color: const Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5, right: 20, left: 20),
              child: Center(
                child: Text(
                  "Selamat datang! Silahkan masuk ke akun anda untuk melanjutkan.",
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
              ),
            ),
            //image dari resources
            SizedBox(height: 10),

            Container(
              margin: EdgeInsets.only(top: 20, bottom: 10),
              child: CustomTextField (
                text: "Email / Username",
                textColor: const Color.fromARGB(255, 0, 0, 0),
                fontSize: 16,
                fontWeight: FontWeight.normal,
                textEditingController: emailController,
                labelText: "Enter your email / usernwdwdame",
                decoration: BoxDecoration(),
                inputDecoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ), 
                obscureText: false,
              ),
              // child: TextField(
                // controller: emailController,
                // decoration: InputDecoration(
                //   labelText: "Email / Username",
                //   hintText: "Enter your email / username",
                //   border: OutlineInputBorder(),
                //   prefixIcon: Icon(Icons.person),
                // ),
              // ),
            ),
            CustomTextField(
              text: "Password",
              textColor: const Color.fromARGB(255, 0, 0, 0),
              fontSize: 16,
              fontWeight: FontWeight.normal,
              textEditingController: passwordController,
              labelText: "Enter your password",
              decoration: BoxDecoration(),
              inputDecoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock),
              ),
              obscureText: true,
            ),
            // TextField(
              // controller: passwordController,
              // obscureText: true, // untuk menyembunyikan karakter password
              // decoration: InputDecoration(
              //   labelText: "Password",
              //   hintText: "Enter your password",
              //   border: OutlineInputBorder(),
              //   prefixIcon: Icon(Icons.lock),
              // ),
            // ),
            //button login
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 10),
                width: 300,
                child: Center(
                  child: CustomButton(
                    text: "Login",
                    textColor: Colors.black,
                    onPressed: () {
                      if (emailController.text == "admin" &&
                          passwordController.text == "admin") {
                        setState(() {
                          statuslogin = "Login successful!";
                          print(statuslogin);
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => homePage()),
                          );
                        });
                      } else {
                        setState(() {
                          statuslogin = "Login Failed!";
                          print(statuslogin);
                        });
                      }
                    },
                  ),
                ),
                // child: ElevatedButton(
                //   onPressed: () {
                // if (emailController.text == "admin" &&
                //     passwordController.text == "admin") {
                //   setState(() {
                //     statuslogin = "Login successful!";
                //     print(statuslogin);
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(builder: (context) => homePage()),
                //     );
                //   });
                // } else {
                //   setState(() {
                //     statuslogin = "Login Failed!";
                //     print(statuslogin);
                //   });
                // }
                //   },
                //   child: Row(
                //     mainAxisSize: MainAxisSize.min,
                //     children: [
                //       Icon(Icons.login, color: const Color.fromARGB(255, 0, 0, 0)),
                //       SizedBox(width: 8),
                //       Text("Login",
                //       style: TextStyle(color: Colors.black),),
                //     ],
                //   ),
                // ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                children: [
                  Expanded(child: Divider(thickness: 1)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text("atau", style: TextStyle(color: Colors.grey)),
                  ),
                  Expanded(child: Divider(thickness: 1)),
                ],
              ),
            ),
            Center(
              child: Text("Belum punya akun?", style: TextStyle(fontSize: 16)),
            ),
            // Container(
            //   margin: EdgeInsets.only(top: 20),
            //   child: Center(child: Text(statuslogin)),
            // ),
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          RegisterPage(), // Pastikan RegisterPage sudah dibuat
                    ),
                  );
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(width: 5),
                    Icon(Icons.post_add_rounded, color: Colors.blue),
                    Text(
                      "Register sekarang",
                      style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
