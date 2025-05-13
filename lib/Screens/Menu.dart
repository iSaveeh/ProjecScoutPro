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

          // ==== Button Log Out ====

          Positioned(
            top: 70,
            left: 320,
            right: 0,
            child: IconButton(
              onPressed: (
                // action
              ){}, 
              icon: Image.asset('assets/images/cerrarsesion.png', width: 50, height: 50,)),
                  ),


            Positioned(
              top: 70,
              left: 70,
              right: 70,
              child: Text(
                'Menú',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontFamily: 'Days One',
                ),
              ), // Add a placeholder widget or your desired child widget here
            )
                ],

          


          ),
        );
      }
    }