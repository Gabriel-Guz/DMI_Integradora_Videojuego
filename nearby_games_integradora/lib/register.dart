import 'package:flutter/material.dart';
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
                  // Acción a ejecutar cuando se presiona el botón de registrarse
                  // Agrega aquí la lógica para el registro de usuario
                  // Por ejemplo, puedes almacenar los datos en una base de datos
                  // y luego navegar a la pantalla de inicio de sesión
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                child: Text("Registrarse"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
