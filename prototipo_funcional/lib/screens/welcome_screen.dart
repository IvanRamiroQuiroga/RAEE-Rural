import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'register_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/recycling_illustration.png',
                width: 250,
                height: 250,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 20),
              Image.asset(
                'assets/images/recycling_logo.png',
                width: 100,
                height: 100,
              ),
              const SizedBox(height: 20),
              const Text(
                'EcoRecycle',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF56D859),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Contribuye al cuidado del medio ambiente gestionando adecuadamente los residuos electrónicos.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFFB8C00),  // Color naranja
                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  // Navegación a la pantalla de inicio de sesión usando la ruta definida
                  Navigator.pushNamed(context, '/login');
                },
                child: const Text(
                  'Iniciar sesión',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              const SizedBox(height: 16),
              TextButton(
                onPressed: () {
                  // Navegación a la pantalla de registro usando la ruta definida
                  Navigator.pushNamed(context, '/register');
                },
                child: const Text(
                  'Registrarse',
                  style: TextStyle(fontSize: 16, color: Color(0xFF56D859)),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
