import 'package:flutter/material.dart';
import 'Home.dart';

class MenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF001121),
      body: Stack(
        children: [

          //  === Navigation Bar ===
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Container(
              height: 80,
              decoration: BoxDecoration(
                color: Color(0xFF002140),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),

            // === Button Home ===
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    icon: Icon(Icons.home, color: Colors.white, size: 40),
                    onPressed: () {
                      // Acción para el botón de inicio
                    },
                  ),

            // === Button History ===
                  IconButton(
                    icon: Icon(Icons.history, color: Colors.white, size: 40),
                    onPressed: () {
                      // Acción para el botón de configuración
                    },
                  ),

            // === Button Add === 
                  IconButton(
                    icon: Icon(Icons.add, color: Colors.white, size: 40),
                    onPressed: () {
                      // Acción para el botón de información
                    },
                  ),

            // === Button Comparation === 
                  IconButton(
                    icon: Icon(Icons.compare_arrows, color: Colors.white, size: 40),
                    onPressed: () {
                      // Acción para el botón de información
                    },
                  ),

            // ===  Button profile === 
                  IconButton(
                    icon: Icon(Icons.person, color: Colors.white, size: 40),
                    onPressed: () {
                      // Acción para el botón de información
                    },
                  ),
                  
                ],
              ),
            ),
          )

        ],
      ),
    );
  }
  }
