import 'package:flutter/material.dart';

class RanksScreen extends StatelessWidget {
  const RanksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/rrrPosterRanks.webp"),
                  fit: BoxFit.contain,
                  alignment: AlignmentDirectional.topCenter),
            ),
          ),
          const Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    titleTextStyle: TextStyle(color: Colors.amber),
                    title: Text(
                      "Marcador",
                      style: TextStyle(fontSize: 40),
                      textAlign: TextAlign.start,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
