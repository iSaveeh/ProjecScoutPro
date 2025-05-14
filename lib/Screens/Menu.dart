import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  bool showMenu = false;

  void toggleMenu() {
    setState(() {
      showMenu = !showMenu;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF001121),
      appBar: AppBar(
        title: Text('Scout Pro'),
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontFamily: 'Days One',
          color: Colors.white,
        ),
        backgroundColor: const Color(0xFF001121),
        leading: IconButton(
          icon: Icon(Icons.menu),
          color: Colors.white,
          onPressed: toggleMenu,
        ),
      ),
      body: Stack(
        children: [
          // Main content
          Center(
            child: Text(
              'Pantalla principal',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),

          // Menú lateral desde la izquierda
          AnimatedPositioned(
            duration: Duration(milliseconds: 300),
            left: showMenu ? 0 : -250,
            top: 0,
            bottom: 0,
            child: Container(
              width: 210,
              color: const Color(0xFFA3C9D9),
              child: Stack(
                children: [
                  // Imagen de perfil
                  Positioned(
                    top: 70,
                    left: 0,
                    right: 10,
                    child: GestureDetector(
                      onTap: () {
                        // Acción al tocar la imagen
                      },
                      child: CircleAvatar(
                        radius: 70,
                      ),
                    ),
                  ),

                  // Menú de botones
                  Positioned(
                    top: 270,
                    left: 0,
                    right: 5,
                    child: TextButton(
                      onPressed: () {
                        // Acción al tocar el botón
                      },
                      child: Text(
                        'Mi perfil',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontFamily: 'Carme',
                          fontWeight: FontWeight.bold,
                        ),
                      ), 
                    ),
                  ),

                  Positioned(
                    top: 370,
                    left: 0,
                    right: 5,
                    child: TextButton(
                      onPressed: () {
                        // Acción al tocar el botón
                      },
                      child: Text(
                        'Añadir Jugador',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontFamily: 'Carme',
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),

                  Positioned(
                    top: 470,
                    left: 0,
                    right: 5,
                    child: TextButton(
                      onPressed: () {
                        // Acción al tocar el botón
                      },
                      child: Text(
                        'Ver Historial',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontFamily: 'Carme',
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),

                  Positioned(
                    top: 570,
                    left: 0,
                    right: 5,
                    child: TextButton(
                      onPressed: () {
                        // Acción al tocar el botón
                      },
                      child: Text(
                        'Cerrar Sesion',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontFamily: 'Carme',
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),

                  






                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
