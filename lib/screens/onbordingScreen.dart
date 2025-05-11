import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newsly/screens/homeScreen.dart';

class Onbordingscreen extends StatefulWidget {
  const Onbordingscreen({super.key});

  @override
  State<Onbordingscreen> createState() => _OnbordingscreenState();
}

class _OnbordingscreenState extends State<Onbordingscreen> {
  final List<String> images = [
    'assets/images/perso.jpg',
    'assets/images/perso2.jpg',
    'assets/images/perso3.jpg',
  ];

  int _currentIndex = 0;
  bool _isVisible = true;

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 3), (timer) {
      setState(() {
        _isVisible = false;
      });
      Future.delayed(Duration(milliseconds: 500), () {
        setState(() {
          _currentIndex = (_currentIndex + 1) % images.length;
          _isVisible = true;
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Stack(children: [
          AnimatedOpacity(
            opacity: _isVisible ? 1.0 : 0.0,
            duration: Duration(milliseconds: 500),
            child: Image.asset(
              images[_currentIndex],
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(0.9),
                  ],
                ),
              ),
            ),
          ),

          // Text and Button
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.w),
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 40.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Stay Informed from Day One",
                          maxLines: 2,
                          style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30.sp, // Ajustement de taille
                              color: Colors.white, // Couleur du texte
                              letterSpacing: .5,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Discover the Latest News with our Seamless Onboarding Experience",
                          maxLines: 2,
                          style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                              fontSize: 14.sp, // Ajustement de taille
                              color: Colors.white70, // Couleur du texte
                              letterSpacing: .5,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  OutlinedButton(
                    onPressed: () {
                      // Action pour "Créer un compte"
                      Navigator.of(context).push(
                        PageRouteBuilder(
                          transitionDuration: Duration(milliseconds: 500),
                          pageBuilder: (BuildContext context,
                              Animation<double> animation,
                              Animation<double> secondaryAnimation) {
                            return Homescreen();
                          },
                          transitionsBuilder: (BuildContext context,
                              Animation<double> animation,
                              Animation<double> secondaryAnimation,
                              Widget child) {
                            return Align(
                              child: FadeTransition(
                                opacity: animation,
                                child: child,
                              ),
                            );
                          },
                        ),
                      );
                    },
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                          vertical: 20.w), // Uniforme et centré
                      side: BorderSide(color: Colors.teal),
                      backgroundColor: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(30.r), // Coins arrondis
                      ), // Couleur de la bordure
                    ),
                    child: Text(
                      'Getting Started',
                      style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                          fontSize: 16.sp, // Ajustement de taille
                          color: Colors.white, // Couleur du texte
                          letterSpacing: .5,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
