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
                  // Navega a la pantalla de registro (register)
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Home_Principal()));
                },
                child: Text("Iniciar Sesion",
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
