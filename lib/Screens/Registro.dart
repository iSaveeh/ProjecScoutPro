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
                  Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                        transitionDuration: Duration(milliseconds: 400),
                        pageBuilder: (context, animation, secondaryAnimation) => HomeScreen(),
                        transitionsBuilder: (context, animation, secondaryAnimation, child) {
                          const begin = Offset(-1.0, -0.0); // desde la derecha
                          const end = Offset.zero;
                          const curve = Curves.ease;

                          final tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                          final offsetAnimation = animation.drive(tween);

                          return SlideTransition(
                            position: offsetAnimation,
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
                      'Crea tu cuenta',
                      style: TextStyle(
                        fontFamily: 'Days One',
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  const SizedBox(height: 25),

                  // === Email TextBox ===
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF2F2F2),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const TextField(
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'Carme',
                      ),
                      decoration: InputDecoration(
                        icon: Icon(Icons.email_outlined),
                        hintText: 'Correo electrónico',
                        hintStyle: TextStyle(
                          color: Color(0xFFA6A6A6),
                          fontSize: 25,
                          fontFamily: 'Carme',
                        ),
                        border: InputBorder.none
                      ),
                    ),
                  ),

                  const SizedBox(height: 1),

                  // === User TextBox ===

                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF2F2F2),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const TextField(
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'Carme',
                      ),
                      decoration: InputDecoration(
                        icon: Icon(Icons.person_outline),
                        hintText: 'Nombre de usuario',
                        hintStyle: TextStyle(
                          color: Color(0xFFA6A6A6),
                          fontSize: 25,
                          fontFamily: 'Carme',
                        ),
                        border: InputBorder.none
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),

                  // === Password Container ===
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF2F2F2),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const TextField(
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'Carme',
                      ),
                      obscureText: true,
                      decoration: InputDecoration(
                        icon: Icon(Icons.lock_outline),
                        hintText: 'Contraseña',
                        hintStyle: TextStyle(
                          color: Color(0xFFA6A6A6),
                          fontSize: 25,
                          fontFamily: 'Carme',
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // === Confirm Password Container ===

                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF2F2F2),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const TextField(
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'Carme',
                      ),
                      obscureText: true,
                      decoration: InputDecoration(
                        icon: Icon(Icons.lock_outline),
                        hintText: 'Confirmar contraseña',
                        hintStyle: TextStyle(
                          color: Color(0xFFA6A6A6),
                          fontSize: 25,
                          fontFamily: 'Carme',
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),

                  const SizedBox(height: 50),

                  // === Button to Register ===
                  Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                      color: const Color(0xFF001121),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: TextButton(
                      onPressed: () {
                        // Add your registration logic here
                      },
                      child: const Text(
                        'Registrarse',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontFamily: 'Days One',
                        ),
                      ),
                    ),
                  ),

                  
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