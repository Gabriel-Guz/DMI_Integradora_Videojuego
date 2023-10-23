import 'package:flutter/material.dart';
import 'package:nearby_games_integradora/home.dart';
import 'package:nearby_games_integradora/login.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registrarse"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: "Nombre",
                ),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  labelText: "Fecha de Nacimiento",
                ),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  labelText: "Correo",
                ),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  labelText: "Contraseña",
                ),
                obscureText: true,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Navega a la pantalla de registro (register)
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                child: Text("Registrarse",
                    style: TextStyle(fontSize: 18, shadows: [
                      Shadow(
                        color: Colors.white,
                        offset: Offset(0, 0),
                        blurRadius: 10,
                      )
                    ])),
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 230, 30, 30),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  elevation: 10,
                  shadowColor: Color.fromARGB(255, 11, 204, 162),
                  minimumSize: Size(140, 40),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
