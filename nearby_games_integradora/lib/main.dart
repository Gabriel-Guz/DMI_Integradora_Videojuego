// Creado por:
// Asignatura: Desarrollo Movil Integral
//Grado: 10   Grupo: "A"
// Docente: MTI. Marco Antonio Ramirez Hernandez
import 'package:flutter/material.dart';
import 'package:nearby_games_integradora/home.dart'; // Importa el archivo home.dart
import 'package:nearby_games_integradora/splash_screen.dart'; // Importa el archivo splash_screen.dart

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(), // Inicia con la pantalla de splash
    theme: new ThemeData.dark(),
  ));

  // Agregar un Future.delayed para esperar un tiempo antes de navegar a la pantalla principal
  Future.delayed(Duration(seconds: 5), () {
    runApp(new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
          Home(), // Navega a la pantalla principal después de 3 segundos (ajusta el tiempo según sea necesario)
      theme: new ThemeData.dark(),
    ));
  });
}
