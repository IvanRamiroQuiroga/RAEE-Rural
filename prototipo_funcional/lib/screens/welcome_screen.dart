import 'package:flutter/material.dart';
import 'login_screen.dart'; // Pantalla de Login
import 'register_screen.dart'; // Pantalla de Registro

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
              // Imagen ilustración de reciclaje
              Image.asset(
                'assets/images/recycling_illustration.png', // Ruta de la ilustración
                width: 250,
                height: 250,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 20),

              // Logo EcoRecycle
              Image.asset(
                'assets/images/recycling_logo.png', // Ruta del logo
                width: 100, // Ajusta el tamaño del logo
                height: 100, // Ajusta el tamaño del logo
              ),
              const SizedBox(height: 20),

              const Text(
                'EcoRecycle',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF56D859), // Color verde
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
                  backgroundColor: Color(0xFFFB8C00), // Color naranja
                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => const LoginScreen()));
                },
                child: const Text(
                  'Iniciar sesión',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              const SizedBox(height: 16),
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => const RegisterScreen()));
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
