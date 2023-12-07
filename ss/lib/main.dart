import 'package:flutter/material.dart';
import 'package:ss/src/pages/about_screen.dart';
import 'package:ss/src/pages/home_screen.dart';
import 'package:ss/src/pages/login_screen.dart';
import 'package:ss/src/pages/ranks_screen.dart';
import 'package:ss/src/pages/register_screen.dart';
import 'package:ss/src/pages/splash_screen.dart';
import 'package:ss/src/pages/story_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      initialRoute: "splash",
      routes: {
        "splash": (context) => const SplashScreen(),
        "login": (context) => const LoginScreen(),
        "home": (context) => const HomeScreen(),
        "register": (context) => const RegisterScreen(),
        "story": (context) => const StoryScreen(),
        "about": (context) => const AboutScreen(),
        "ranks": (context) => const RanksScreen()
      },
    );
  }
}
