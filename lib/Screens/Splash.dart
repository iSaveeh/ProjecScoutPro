import 'package:flutter/material.dart';
import 'Home.dart'; // import home Screen

// Create a SplashScreen widget
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

// Create a state for the SplashScreen widget
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Wait 5 seconds and then navigate to the HomeScreen with a smooth animation
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => HomeScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(0.0, 1.0); // Start from bottom
            const end = Offset.zero; // End at the current position
            const curve = Curves.easeInOut; // Animation curve

            var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
            var offsetAnimation = animation.drive(tween);

            return SlideTransition(
              position: offsetAnimation,
              child: child,
            );
          },
        ),
      );
    });
  }

  // Build the UI for the SplashScreen
  @override
  Widget build(BuildContext context) {
    return Scaffold( // Scaffold widget provides a structure for the app
      backgroundColor: Color(0xFF001121),
      body: Center( // Center the content in the screen
        child: Image.asset('assets/images/Logo.png', width: 300),  // Image of the logo
      ),
    );
  } // End of the build method
}// End of the _SplashScreenState class
