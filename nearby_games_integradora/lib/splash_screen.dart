// Creado por:
// Asignatura: Desarrollo Movil Integral
//Grado: 10   Grupo: "A"
// Docente: MTI. Marco Antonio Ramirez Hernandez
import 'package:flutter/material.dart';
import 'package:nearby_games_integradora/home.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double _progress = 0.0;
  bool _isLoading = true;

  void _simulateLoading() {
    const totalDuration = Duration(seconds: 25);
    const intervalDuration = Duration(seconds: 5);
    int intervals = 0;

    Timer.periodic(intervalDuration, (timer) {
      if (intervals >= 5) {
        timer.cancel();
        return;
      }
      if (mounted) {
        setState(() {
          _progress += 0.2;
        });
      }
      intervals++;
    });

    Future.delayed(totalDuration, () {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (BuildContext context) => Home(),
          ),
        );
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _simulateLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black, // Fondo negro de toda la pantalla
        padding: EdgeInsets.all(16.0), // Padding para la barra
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/carroCarga.png', // Ruta de la imagen del carro
                    width: 200, // Ancho de la imagen del carro
                    height: 200, // Altura de la imagen del carro
                  ),
                ],
              ),
              Text(
                _isLoading ? "Cargando..." : "Carga completada",
                style: TextStyle(
                  fontSize: 38, // Tamaño de texto más grande
                  fontFamily: 'MiFuente', // Fuente personalizada
                ),
              ),
              SizedBox(height: 20),
              if (_isLoading)
                Column(
                  children: [
                    SizedBox(
                      height: 25, // Hacer la barra más alta

                      child: LinearProgressIndicator(
                        value: _progress,
                        backgroundColor:
                            Colors.white, // Fondo blanco de la barra
                        valueColor: AlwaysStoppedAnimation<Color>(
                            Color.fromARGB(255, 65, 142,
                                241)), // Cambiar el color de carga a rojo
                      ),
                    ),

                    SizedBox(
                      height: 10, // Espacio entre la barra y el porcentaje
                    ),
                    Text(
                      "${(_progress * 100).toInt()}%", // Porcentaje
                      style: TextStyle(
                        color: Colors.white, // Texto en blanco
                        fontSize: 32, // Tamaño de porcentaje más grande
                      ),
                    ),
                    SizedBox(
                        height: 20), // Espacio entre el porcentaje y la imagen
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
