import 'package:flutter/material.dart';
// Asegúrate de que las rutas a tus pantallas sean correctas
import 'Screens/Splash.dart'; // Tenías esta importación antes
import 'Screens/Menu.dart';   // Y esta para tu pantalla principal

// Esta era la forma en que tenías tu función main originalmente
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Scout Pro',
      home: MenuScreen(), // Aquí llamabas a tu pantalla MenuScreen
    );
  }
}