import 'package:flutter/material.dart';
import 'package:nearby_games_integradora/home_principal.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Iniciar Sesión"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: "Nombre de Usuario",
                ),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  labelText: "Contraseña",
                ),
                obscureText: true, // Oculta la contraseña
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  // Acción a ejecutar cuando se presiona "¿Olvidaste la contraseña?"
                  // Agrega aquí la lógica para la recuperación de contraseña
                },
                child: Text("¿Olvidaste la contraseña?"),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Home_Principal()));
                },
                child: Text("Iniciar Sesión"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
