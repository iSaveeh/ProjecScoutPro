import 'package:flutter/material.dart';
import 'Registro.dart';
import 'BackupPassword.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF001121),
      body: Stack(
        children: [
          // ===Container with Text and Image===
          Positioned(
            top: 120,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text(
                      'Bienvenido!',
                      style: TextStyle(
                        fontFamily: 'Days One',
                        fontSize: 42,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(width: 30),
                    Image.asset(
                      'assets/images/Performance.png',
                      height: 80,
                    ),
                  ],
                ),
                const SizedBox(height: 0),
                const Text(
                  'Scout Pro',
                  style: TextStyle(
                    fontFamily: 'Carme',
                    fontSize: 26,
                    color: Colors.white70,
                  ),
                ),
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
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 65, left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Inicio de Sesión',
                      style: TextStyle(
                        fontFamily: 'Days One',
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    const SizedBox(height: 25),

                    // ===User TextBox===
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
                          hintText: 'Usuario',
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

                    // ===Password Container===
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF2F2F2),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: TextField(
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontFamily: 'Carme',
                        ),
                        obscureText: _obscureText,
                        decoration: InputDecoration(
                          icon: const Icon(Icons.lock_outline),
                          hintText: 'Contraseña',
                          hintStyle: const TextStyle(
                            color: Color(0xFFA6A6A6),
                            fontSize: 25,
                            fontFamily: 'Carme',
                          ),
                          border: InputBorder.none,
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscureText
                                  ? Icons.visibility_off_outlined
                                  : Icons.visibility_outlined,
                            ),
                            onPressed: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 5),

                    //  ===Link to Forgot Password===
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            PageRouteBuilder(
                              transitionDuration: const Duration(milliseconds: 600),
                              pageBuilder: (context, animation, secondaryAnimation) => BackupPassword(),
                              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                // Controla la opacidad (desvanecimiento)
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
                          '¿Olvidaste la contraseña?',
                          style: TextStyle(
                            color: Color(0xFF0F758C),
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 30),

                    // ===Login Button===
                    Center(
                      child: Container(
                        width: 200,
                        height: 50,
                        decoration: BoxDecoration(
                          color: const Color(0xFF001121),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: TextButton(
                          onPressed: () {
                            // Acción del botón
                          },
                          child: const Text(
                            'Iniciar Sesión',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Days One',
                            ),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    // === Link to Sign Up ===
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          '¿No tienes cuenta?',
                          style: TextStyle(
                            color: Color(0xFF4E4E4E),
                            fontSize: 20,
                            fontFamily: 'Carme',
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              PageRouteBuilder(
                                transitionDuration: const Duration(milliseconds: 600),
                                pageBuilder: (context, animation, secondaryAnimation) => RegistroScreen(),
                                transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                  // Controla la opacidad (desvanecimiento)
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
                            'Registrate',
                            style: TextStyle(
                              color: Color(0xFF0F758C),
                              fontSize: 20,
                              fontFamily: 'Carme',
                            ),
                          ),
                        ),
                      ],
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
