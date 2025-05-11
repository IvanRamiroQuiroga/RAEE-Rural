import 'package:flutter/material.dart';
import 'what_to_recycle_screen.dart';  // Asegúrate de importar la pantalla correspondiente

class RecyclingLocationScreen extends StatelessWidget {
  const RecyclingLocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('¡Gran noticia!'),
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);  // Regresar a la pantalla anterior
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '¡Tu área ya está cubierta por la recolección de residuos electrónicos!',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              'Jueves a partir de las 18 h',
              style: TextStyle(fontSize: 18, color: Colors.orange),
            ),
            const SizedBox(height: 20),
            const Text(
              'Solo separa tus residuos electrónicos y colócalos en el lugar habitual para la recogida.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                // Navegar a la pantalla "¿Qué reciclar?"
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const WhatToRecycleScreen(), // Asegúrate de que la pantalla esté bien implementada
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text(
                '¿Qué reciclar?',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
