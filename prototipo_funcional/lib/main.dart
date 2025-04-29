import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart'; // El archivo que contiene el WelcomeScreen

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RAEE Rural',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const WelcomeScreen(),  // Este es el cambio para mostrar WelcomeScreen primero
    );
  }
}

