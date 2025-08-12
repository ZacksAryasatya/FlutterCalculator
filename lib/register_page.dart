import 'package:flutter/material.dart';
import 'package:flutter_application_1/login_page.dart';
class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController tanggalController = TextEditingController();
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(title: Text("Register Page")),
      body: SingleChildScrollView(
         child : Container(
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
                "Register Your Account",
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
                  "Selamat datang! Silahkan register akun anda untuk melanjutkan.",
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
              ),
            ),
            
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Email / Username",
                  hintText: "Enter your email / username",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
              ),
            ),
            TextField(
              obscureText: true, 
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "Enter your password",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: "Jenis Kelamin",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person_outline),
                ),
                items: [
                  DropdownMenuItem(value: "Laki-laki", child: Text("Laki-laki")),
                  DropdownMenuItem(value: "Perempuan", child: Text("Perempuan")),
                ],
                onChanged: (value) {

                },
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: TextField(
                controller: tanggalController,
                readOnly: true,
                decoration: InputDecoration(
                  labelText: "Tanggal Lahir",
                  hintText: "Masukkan tanggal lahir anda",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.calendar_today),
                ),
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1900),
                    lastDate: DateTime.now(),
                  );
                  if (pickedDate != null) {
                    String formattedDate =
                        "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
                    setState(() {
                      tanggalController.text = formattedDate; 
                    });
                  }
                },
              ),
            ),

            Center(
              child: Container(
                margin: EdgeInsets.only(top: 10),
                width: 300,
                child: ElevatedButton(
                  onPressed: () {
                   
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.login, color: const Color.fromARGB(255, 0, 0, 0)),
                      SizedBox(width: 8),
                      Text("Register",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontSize: 16,
                      ),),
                    ],
                  ),
                ),
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
            Expanded(child: Divider(thickness: 1,))
            ]),
            ),
            Center(
              child: Text("Sudah punya akun?", style: TextStyle(fontSize: 16)),
            ),
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          loginPage(), 
                    ),
                  );
                },

                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(width: 5),
                    Icon(Icons.post_add_rounded, color: Colors.blue),
                    Text(
                      "Login sekarang",
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
    ),
   );
  }
}
