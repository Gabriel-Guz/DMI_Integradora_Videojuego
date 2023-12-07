import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 70, 0, 10),
            child: Image.asset('assets/rrrPoster.jpg'),
          ),
          const Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    titleTextStyle: TextStyle(color: Colors.white),
                    title: Text(
                      "Acerca de",
                      style: TextStyle(fontSize: 40),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          ),
          const Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: IconButton(
                onPressed: AlertDialog.adaptive,
                icon: Icon(Icons.logout),
                color: Colors.red,
              ),
            ),
          )
        ],
      ),
    );
  }
}
