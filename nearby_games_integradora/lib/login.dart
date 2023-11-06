import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:nearby_games_integradora/home_principal.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool showCompanyImage = true;
  TextEditingController usernameController =
      TextEditingController(); // Agrega un controlador para el campo de nombre de usuario

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
                      'assets/carroCarga.png',
                      width: 200,
                      height: 200,
                    )
                  : SizedBox(),
            ),
            SizedBox(height: 20),
            TextField(
              controller:
                  usernameController, // Utiliza el controlador para el campo de nombre de usuario
              decoration: InputDecoration(
                labelText: "Nombre de Usuario",
              ),
              onChanged: (text) {
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
                // Agrega aquí la lógica para la recuperación de contraseña
              },
              child: Text("¿Olvidaste la contraseña?"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                // Simula un inicio de sesión exitoso, reemplaza esto con tu lógica real
                bool loginSuccessful = true;
                String username = usernameController
                    .text; // Obtiene el nombre de usuario del campo de entrada

                if (loginSuccessful) {
                  SharedPreferences prefs =
                      await SharedPreferences.getInstance();
                  await prefs.setBool('isLoggedIn', true);
                  await prefs.setString('username', username);

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePrincipal(),
                    ),
                  );
                }
              },
              child: Text(
                "Iniciar Sesión",
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
          ],
        ),
      ),
    );
  }
}
