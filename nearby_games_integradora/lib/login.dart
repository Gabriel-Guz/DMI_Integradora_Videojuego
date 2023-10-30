import 'package:flutter/material.dart';
import 'package:nearby_games_integradora/home_principal.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool showCompanyImage = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Iniciar Sesión"),
        backgroundColor: Color.fromARGB(255, 32, 31, 31),
      ),
      body: Container(
        color: Colors.black,
        padding: const EdgeInsets.fromLTRB(25, 0, 25, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedSwitcher(
              duration: Duration(milliseconds: 500),
              child: showCompanyImage
                  ? Image.asset(
                      'assets/carroCarga.png', // Ruta de la imagen de la empresa en assets
                      width: 200, // Ancho de la imagen
                      height: 200, // Altura de la imagen
                    )
                  : SizedBox(), // Espacio vacío cuando la imagen está oculta
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: "Nombre de Usuario",
              ),
              onChanged: (text) {
                // Oculta la imagen de la empresa cuando el usuario comienza a escribir
                setState(() {
                  showCompanyImage = false;
                });
              },
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: "Contraseña",
              ),
              obscureText: true,
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
                // Navega a la pantalla principal
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Home_Principal()));
              },
              child: Text("Iniciar Sesión",
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
    );
  }
}
