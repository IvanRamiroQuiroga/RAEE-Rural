import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // inicio de sesión
  void _login() {
    if (_emailController.text.isNotEmpty && _passwordController.text.isNotEmpty) {
      // Mostrar mensaje de éxito
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Inicio de sesión exitoso'),
          backgroundColor: Colors.green,
        ),
      );
      // Redirigir a la pantalla principal
      Navigator.pushReplacementNamed(context, '/home'); // Redirige al home
    } else {
      // Mostrar error si los campos están vacíos
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Por favor, ingrese un correo y una contraseña válidos.'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Iniciar sesión")),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '¡Bienvenido! Juntos hacemos del reciclaje un hábito para un planeta más verde',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            // Campo de Email
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Correo electrónico',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            // Campo de Contraseña
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Contraseña',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            // Botón de "Iniciar sesión"
            ElevatedButton(
              onPressed: _login,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              ),
              child: const Text('Iniciar sesión'),
            ),
            const SizedBox(height: 16),
            // Enlace de "Olvidaste tu contraseña?"
            TextButton(
              onPressed: () {

              },
              child: const Text('¿Olvidaste tu contraseña?'),
            ),
            const SizedBox(height: 20),
            const Text('Ingresar con:'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Botón de Facebook
                IconButton(
                  icon: const Icon(Icons.facebook),
                  onPressed: () {
                  },
                ),
                // Botón de Google
                IconButton(
                  icon: const Icon(Icons.g_translate),
                  onPressed: () {

                  },
                ),
                // Botón de Apple
                IconButton(
                  icon: const Icon(Icons.apple),
                  onPressed: () {

                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
