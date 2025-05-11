import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart'; // Pantalla de bienvenida
import 'screens/login_screen.dart'; // Pantalla de login
import 'screens/register_screen.dart'; // Pantalla de registro
import 'screens/home_screen.dart'; // Pantalla principal después de login
import 'screens/recycling_centers_screen.dart'; // Pantalla de puntos de recolección
import 'screens/what_to_recycle_screen.dart'; // Nueva pantalla ¿Qué reciclar?
import 'screens/recyclers_screen.dart'; // Pantalla de recicladores
import 'screens/scheduled_collections_screen.dart'; // Nueva pantalla de recolecciones programadas

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
      initialRoute: '/', // La primera pantalla que se muestra
      routes: {
        '/': (context) => const WelcomeScreen(), // Pantalla de bienvenida
        '/login': (context) => const LoginScreen(), // Pantalla de login
        '/register': (context) => const RegisterScreen(), // Pantalla de registro
        '/home': (context) => const MainScreen(), // Pantalla principal después de login
        '/recyclingCenters': (context) => const RecyclingCentersScreen(), // Pantalla de puntos de recolección
        '/whatToRecycle': (context) => const WhatToRecycleScreen(), // Ruta para la pantalla ¿Qué reciclar?
        '/recyclers': (context) => const RecyclersScreen(), // Pantalla de recicladores
        '/scheduledCollections': (context) => const ScheduledCollectionsScreen(), // Ruta para la pantalla de recolecciones programadas
      },
    );
  }
}
