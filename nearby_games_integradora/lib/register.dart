import 'package:flutter/material.dart';
import 'package:nearby_games_integradora/home.dart';
import 'package:nearby_games_integradora/login.dart';
import 'package:nearby_games_integradora/home_principal.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registrarse"),
        backgroundColor: Color.fromARGB(255, 32, 31,
            31), // Establece el color de fondo del Scaffold en negro
      ),
      body: Container(
        color: Colors.black,
        padding: const EdgeInsets.fromLTRB(
            25, 0, 25, 10), // Agrega un padding en la parte inferior
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
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                // Navega a la pantalla de registro (register)
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Login()));
              },
              child: Text(
                "Registrarse",
                style: TextStyle(fontSize: 18, shadows: [
                  Shadow(
                    color: Colors.white,
                    offset: Offset(0, 0),
                    blurRadius: 10,
                  )
                ]),
              ),
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
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Image.asset(
                    'assets/facebook.png', // Ruta de la imagen del ícono de Facebook en assets
                    width: 50, // Ancho de la imagen
                    height: 50, // Altura de la imagen
                  ),
                  iconSize:
                      60, // Tamaño del icono (ajusta este valor según tus preferencias)
                  onPressed: () {
                    // Agrega aquí la lógica para el inicio de sesión con Facebook
                  },
                ),
                IconButton(
                  icon: Image.asset(
                    'assets/google.png', // Ruta de la imagen del ícono de Facebook en assets
                    width: 100, // Ancho de la imagen
                    height: 100, // Altura de la imagen
                  ),
                  iconSize:
                      60, // Tamaño del icono (ajusta este valor según tus preferencias)
                  onPressed: () {
                    // Agrega aquí la lógica para el inicio de sesión con Facebook
                  },
                ),
                IconButton(
                  icon: Image.asset(
                    'assets/github.png', // Ruta de la imagen del ícono de Facebook en assets
                    width: 100, // Ancho de la imagen
                    height: 100, // Altura de la imagen
                  ),
                  iconSize:
                      60, // Tamaño del icono (ajusta este valor según tus preferencias)
                  onPressed: () {
                    // Navega a la pantalla principal
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Home_Principal()));
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
