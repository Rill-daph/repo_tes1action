import 'package:flutter/material.dart';

void main() {
  runApp(tes());
}

class tes extends StatefulWidget {
  @override
  State<tes> createState() => tes_State();
}

class tes_State extends State<tes> {
  TextEditingController nama_controller = TextEditingController();
  TextEditingController password_controller = TextEditingController();
  String pesan = '';
  //function
  void login() {
    setState(() {
      nama_controller;
      password_controller;

      if (nama_controller.text == '' && password_controller.text == '') {
        pesan = 'Salah, login gagal ulangi lagi';
      } else if (nama_controller.text == 'pau-pau' &&
          password_controller.text == 'paupau') {
        pesan = 'login berhasil';
      } else {
        pesan = 'login gagal';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffbab5a2),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Center(
                child: Text("LOGIN PAGE"),
              ),
              SizedBox(
                height: 25,
              ),
              TextField(
                controller: nama_controller,
                decoration: InputDecoration(
                    labelText: "usn",
                    hintText: "Username",
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                controller: password_controller,
                decoration: InputDecoration(
                    labelText: "pwd",
                    hintText: "Password",
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  login();
                },
                child: Text("login"),
              ),
              Text(pesan)
            ],
          ),
        ),
      ),
    );
  }
}
