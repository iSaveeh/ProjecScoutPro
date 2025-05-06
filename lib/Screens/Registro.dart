import 'package:flutter/material.dart';
import 'Home.dart'; // import home Screen

class RegistroScreen extends StatefulWidget {
  @override
  _RegistroScreenState createState() => _RegistroScreenState();
}

class _RegistroScreenState extends State<RegistroScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF001121),
      body: Stack(
        children: [

          // === Button container to go back ===

          Positioned(
            top: 70,
            left: 270,
            child: Container(
              width: 130,
              height: 50,
              decoration: BoxDecoration(
                color: const Color(0xFFEB1C1C),
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(), // Navigate to HomeScreen
                    )
                  );
                },
                child: const Text(
                  '← Volver',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Days One',
                  ),
                ),
              ),
            ),
          ),

          Positioned(
            top: 120,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text(
                      'Descubre nuevos\ntalentos!',
                      style: TextStyle(
                        fontFamily: 'Carme',
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 0),
                Image.asset(
                  'assets/images/estrategia.png',
                  height: 80,
                )
              ],
            ),
          ),

          // ===Container Login Form===
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 600,
              decoration: const BoxDecoration(
                color: Color(0xFFCFCFCF),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 35, left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Crear tu cuenta',
                      style: TextStyle(
                        fontFamily: 'Days One',
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  const SizedBox(height: 25),

                  
                ],
              ),
            ),
          ),
          ),
        ],
      ),
    );
  }
}