import 'package:flutter/material.dart';
import 'Screens/Splash.dart'; 

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Scout Pro',
      home: SplashScreen(), // Aquí llamamos a la pantalla de carga
    );
  }
}
