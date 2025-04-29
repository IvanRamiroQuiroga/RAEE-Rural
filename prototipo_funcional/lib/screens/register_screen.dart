// register_screen.dart
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Registrarse")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Pantalla de Registro'),
            ElevatedButton(
              onPressed: () {
                // Aquí puedes agregar lógica para registrarse
              },
              child: const Text('Registrarse'),
            ),
          ],
        ),
      ),
    );
  }
}
