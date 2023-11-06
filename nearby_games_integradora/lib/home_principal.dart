import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:nearby_games_integradora/login.dart';

class HomePrincipal extends StatelessWidget {
  late SharedPreferences prefs;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
      future: _checkLoggedInStatus(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.data == true) {
            return _buildLoggedInUI(context);
          } else {
            return _buildNotLoggedInUI(context);
          }
        }
        return CircularProgressIndicator();
      },
    );
  }

  Future<bool> _checkLoggedInStatus() async {
    prefs = await SharedPreferences.getInstance();
    return prefs.getBool('isLoggedIn') ?? false;
  }

  Widget _buildLoggedInUI(BuildContext context) {
    String username = prefs.getString('username') ?? 'Usuario';

    return Scaffold(
      appBar: AppBar(
        title: Text('Home Principal'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Bienvenido, $username'),
            ElevatedButton(
              onPressed: () async {
                await prefs.setBool('isLoggedIn', false);
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Login(),
                  ),
                );
              },
              child: Text('Salir'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNotLoggedInUI(BuildContext context) {
    return Login();
  }
}

void main() {
  runApp(MaterialApp(
    home: Login(),
  ));
}
