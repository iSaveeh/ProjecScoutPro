import 'package:flutter/material.dart';
import 'home.dart';

class BackupPassword extends StatefulWidget {
  @override
  _BackupPasswordState createState() => _BackupPasswordState();
}

class _BackupPasswordState extends State<BackupPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF001121),
      body: Stack(
        children: [
          // === Botón de volver ===
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
                  Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                      transitionDuration: const Duration(milliseconds: 600),
                      pageBuilder: (context, animation, secondaryAnimation) => HomeScreen(),
                      transitionsBuilder: (context, animation, secondaryAnimation, child) {
                        var fadeAnimation = CurvedAnimation(
                          parent: animation,
                          curve: Curves.easeInOut,
                        );
                        return FadeTransition(
                          opacity: fadeAnimation,
                          child: child,
                        );
                      },
                    ),
                  );
                },
                child: const Text(
                  'Volver',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 21,
                    fontFamily: 'Days One',
                  ),
                ),
              ),
            ),
          ),

          // === Contenedor central ===
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 500,
              width: 500,
              decoration: const BoxDecoration(
                color: Color(0xFFCFCFCF),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Stack(
                children: [
                  // Imagen superior
                  Positioned(
                    top: 30,
                    left: 0,
                    right: 0,
                    child: Image.asset(
                      'assets/images/backuppassword.png',
                      width: 100,
                      height: 100,
                    ),
                  ),

                  // Texto
                  Positioned(
                    top: 150,
                    left: 30,
                    right: 20,
                    child: Text(
                      'Olvidaste tu contraseña?',
                      style: TextStyle(
                        fontFamily: 'Carme',
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  // Campo de texto
                  Positioned(
                    top: 230,
                    left: 20,
                    right: 20,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Ingrese su correo electronico',
                        hintStyle: TextStyle(
                          fontFamily: 'Carme',
                          fontSize: 23,
                          color: Color(0xFF001121),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Color(0xFF001121)),
                        ),
                      ),
                      style: TextStyle(
                        fontFamily: 'Carme',
                        fontSize: 20,
                        color: Color(0xFF001121),
                      ),
                    ),
                  ),

                  // Botón de enviar
                  Positioned(
                    top: 350,
                    left: 20,
                    right: 20,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF001121),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: TextButton(
                        onPressed: () {
                          // Acción del botón
                        },
                        child: const Text(
                          'Enviar correo de recuperacion',
                          style: TextStyle(
                            fontFamily: 'Carme',
                            fontSize: 20,
                            color: Colors.white,
                          ),
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
