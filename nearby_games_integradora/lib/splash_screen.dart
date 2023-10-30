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
    const totalDuration = Duration(seconds: 10);
    const updateInterval = Duration(milliseconds: 100);
    int intervals = 0;
    int totalIntervals =
        totalDuration.inMilliseconds ~/ updateInterval.inMilliseconds;

    Timer.periodic(updateInterval, (timer) {
      if (intervals >= totalIntervals) {
        timer.cancel();
        if (mounted) {
          setState(() {
            _isLoading = false;
            _progress =
                1.0; // Asegurarse de que el progreso sea exactamente 1.0
          });
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (BuildContext context) => Home(),
            ),
          );
        }
        return;
      }
      if (mounted) {
        setState(() {
          _progress = (intervals + 1) / totalIntervals;
        });
      }
      intervals++;
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
        color: Colors.black,
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/carroCarga.png',
                    width: 200,
                    height: 200,
                  ),
                ],
              ),
              Text(
                _isLoading ? "Cargando..." : "Carga completada",
                style: TextStyle(
                  fontSize: 38,
                  fontFamily: 'MiFuente',
                ),
              ),
              SizedBox(height: 20),
              if (_isLoading)
                Column(
                  children: [
                    SizedBox(
                      height: 25,
                      child: LinearProgressIndicator(
                        value: _progress,
                        backgroundColor: Colors.white,
                        valueColor: AlwaysStoppedAnimation<Color>(
                            Color.fromARGB(255, 65, 142, 241)),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "${(_progress * 100).toInt()}%",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
