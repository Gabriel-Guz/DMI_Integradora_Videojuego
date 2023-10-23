import 'package:flutter/material.dart';
import 'package:nearby_games_integradora/login.dart';
import 'package:nearby_games_integradora/register.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nearby_Games"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Descripción de la Aplicación",
              style: TextStyle(
                fontSize: 24,
                fontFamily: 'MiFuente',
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navega a la pantalla de inicio de sesión (login)
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Login()));
              },
              child: Text("Iniciar Sesión"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Navega a la pantalla de registro (register)
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Register()));
              },
              child: Text("Registrarse"),
            ),
          ],
        ),
      ),
    );
  }
}
