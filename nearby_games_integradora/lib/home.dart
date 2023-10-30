import 'package:flutter/material.dart';
import 'package:nearby_games_integradora/login.dart';
import 'package:nearby_games_integradora/register.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nearby_Games"),
        backgroundColor: Color.fromARGB(255, 32, 31,
            31), // Establece el color de fondo del Scaffold en negro
      ),
      body: Container(
        color: Colors.black, // Establece el color de fondo negro
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(0),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/carroCarga.png',
                    width: 180,
                    height: 180,
                  ),
                  Text(
                    "Rush Road: La Carrera por la Supervivencia",
                    style: TextStyle(
                      fontSize: 28,
                      fontFamily: 'MiFuente',
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 12),
                  Text(
                    "Emocionante juego de Carreras de Acción / Aventura ambientado en una ciudad devastada por la pandemia y la decadencia económica. Los jugadores asumen el papel de Eliel-Kun y Bob Patiño, choferes de transporte público, quienes se ven obligados a competir en carreras ilegales para proteger a sus familias y sobrevivir en un mundo lleno de peligros.",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 15),
                  ElevatedButton(
                    onPressed: () {
                      // Navega a la pantalla de inicio de sesión (login)
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                    child:
                        Text("Iniciar Sesión", style: TextStyle(fontSize: 18)),
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
                  SizedBox(height: 15),
                  ElevatedButton(
                    onPressed: () {
                      // Navega a la pantalla de registro (register)
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Register()));
                    },
                    child: Text("Registrarse", style: TextStyle(fontSize: 18)),
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(255, 30, 120, 230),
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
          ],
        ),
      ),
    );
  }
}
