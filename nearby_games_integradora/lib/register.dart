import 'package:flutter/material.dart';
import 'package:nearby_games_integradora/login.dart';
import 'package:nearby_games_integradora/home_principal.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Register extends StatelessWidget {
  final GoogleSignIn _googleSignIn = GoogleSignIn(
    clientId:
        '223963518802-3f690udrr340fm02joj1js5gt7qcjge8.apps.googleusercontent.com',
    scopes: ['profile', 'email'],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registrarse"),
        backgroundColor:
            Colors.black, // Establece el color de fondo del AppBar en negro
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
                // Navega a la pantalla de inicio de sesión (Login)
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
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
                primary: Color(
                    0xFFE61E1E), // Usar el código de color en lugar de ARGB
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                elevation: 10,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Image.asset(
                    'assets/facebook.png',
                    width: 50,
                    height: 50,
                  ),
                  iconSize: 60,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePrincipal(),
                      ),
                    ); // Agrega aquí la lógica para el inicio de sesión con Facebook
                  },
                ),
                IconButton(
                    icon: Image.asset(
                      'assets/google.png',
                      width: 100,
                      height: 100,
                    ),
                    iconSize: 60,
                    onPressed: () async {
                      try {
                        final GoogleSignInAccount? googleUser =
                            await _googleSignIn.signIn();

                        if (googleUser != null) {
                          // Autenticación exitosa, muestra las credenciales del usuario en la consola
                          print(
                              'Inició sesión con Google: ${googleUser.displayName}');
                          print('Email: ${googleUser.email}');
                          print('ID de usuario: ${googleUser.id}');
                          // Puedes agregar más detalles de usuario si es necesario

                          // Redirige al usuario a la pantalla principal o ejecuta cualquier otra lógica necesaria.
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePrincipal(),
                            ),
                          );
                        } else {
                          // En caso de que no se haya autenticado correctamente
                          print('No se pudo iniciar sesión con Google.');
                        }
                      } catch (error) {
                        // Maneja la excepción
                        print('Error al iniciar sesión con Google: $error');
                      }
                    }),
                IconButton(
                    icon: Image.asset(
                      'assets/github.png',
                      width: 100,
                      height: 100,
                    ),
                    iconSize: 60,
                    onPressed: () async {
                      try {
                        final GoogleSignInAccount? googleUser =
                            await _googleSignIn.signIn();

                        if (googleUser != null) {
                          // Autenticación exitosa, muestra las credenciales del usuario en la consola
                          print(
                              'Inició sesión con Google: ${googleUser.displayName}');
                          print('Email: ${googleUser.email}');
                          print('ID de usuario: ${googleUser.id}');
                          // Puedes agregar más detalles de usuario si es necesario

                          // Redirige al usuario a la pantalla principal o ejecuta cualquier otra lógica necesaria.
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePrincipal(),
                            ),
                          );
                        } else {
                          // El usuario canceló el inicio de sesión
                          print(
                              'El usuario canceló el inicio de sesión con Google.');
                          // Puedes mostrar un mensaje al usuario o realizar otra acción aquí.
                        }
                      } catch (error) {
                        // Maneja la excepción
                        print('Error al iniciar sesión con Google: $error');
                      }
                    }),
              ],
            )
          ],
        ),
      ),
    );
  }
}
