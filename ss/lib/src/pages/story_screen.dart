import 'package:flutter/material.dart';

class StoryScreen extends StatelessWidget {
  const StoryScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/rrrBackLog.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  titleTextStyle: TextStyle(color: Colors.red),
                  title: Text(
                    "Historia del juego",
                    style: TextStyle(fontSize: 40),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
        const Align(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.all(5),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  titleTextStyle: TextStyle(color: Colors.white),
                  title: Text(
                    "En un sombrío rincón de la ciudad, donde la economía se ha hundido debido a la pandemia, dos choferes de transporte público, Eliel-Kun y Bob Patiño, luchan por mantener a sus familias a salvo. La disminución en la demanda de transporte público los ha dejado con salarios insuficientes para sobrevivir. Desesperados por encontrar una solución, se sumergen en el mundo de las carreras ilegales, donde la velocidad y la astucia son la clave para ganar el premio que tanto necesitan. En su búsqueda de recursos para mantener a sus seres queridos a salvo, Eliel-Kun y Bob se topan con un mundo oscuro y peligroso. Las carreras ilegales no son solo una competencia entre vehículos, sino también una prueba de supervivencia contra mafiosos despiadados que controlan el submundo de las carreras clandestinas. Con el tiempo en su contra, nuestros héroes se embarcan en un emocionante viaje a través de la ciudad, compitiendo en carreras clandestinas y desafiando a los mafiosos en busca de respuestas y recursos.",
                    style: TextStyle(fontSize: 28),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
        )
      ],
    ));
  }
}
