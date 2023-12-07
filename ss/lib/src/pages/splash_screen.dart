import 'package:flutter/material.dart';
//import 'package:ss/src/pages/about_screen.dart';
import 'package:ss/src/pages/login_screen.dart';
import '../widgets/widgets.dart';
//import 'package:ss/src/pages/ranks_screen.dart';
//import 'package:ss/src/pages/story_screen.dart';
//import 'package:ss/src/pages/home_screen.dart';
//import 'package:ss/src/pages/register_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    var d = const Duration(seconds: 20);
    Future.delayed(d, () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const LoginScreen()),
          (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackgroundImages(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 80, 30, 0),
                    child: Container(
                      alignment: Alignment.topRight,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/logoNBremoveBG.png"),
                            fit: BoxFit.none,
                            alignment: Alignment.topRight),
                      ),
                    ),
                  )),
              const Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        titleTextStyle: TextStyle(color: Colors.white),
                        title: Text(
                          "RUSH ROAD",
                          style: TextStyle(fontSize: 45),
                          textAlign: TextAlign.start,
                        ),
                        subtitle: Text(
                          "by",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.all(40),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        titleTextStyle: TextStyle(color: Colors.white),
                        title: Text(
                          "Loading...",
                          style: TextStyle(fontSize: 25),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 20),
                      CircularProgressIndicator(
                        color: Colors.blue,
                      )
                    ],
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        titleTextStyle: TextStyle(color: Colors.white),
                        title: Text(
                          "Version 0.01.13",
                          style: TextStyle(fontSize: 18),
                          textAlign: TextAlign.right,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

/// Flutter code sample for [LinearProgressIndicator].

class ProgressIndicatorExample extends StatefulWidget {
  const ProgressIndicatorExample({super.key});

  @override
  State<ProgressIndicatorExample> createState() =>
      _ProgressIndicatorExampleState();
}

class _ProgressIndicatorExampleState extends State<ProgressIndicatorExample>
    with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      /// [AnimationController]s can be created with `vsync: this` because of
      /// [TickerProviderStateMixin].
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(() {
        setState(() {});
      });
    controller.repeat(reverse: false);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const Text(
              'Linear progress indicator with a fixed color',
              style: TextStyle(fontSize: 20),
            ),
            LinearProgressIndicator(
              value: controller.value,
              semanticsLabel: 'Linear progress indicator',
            ),
          ],
        ),
      ),
    );
  }
}
