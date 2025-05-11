import 'package:flutter/material.dart';

class WhatToRecycleScreen extends StatelessWidget {
  const WhatToRecycleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('¿Qué Reciclar?'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(  // Agregado para permitir el desplazamiento
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Residuos electrónicos que puedes separar para su recolección:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            // Tarjetas de reciclaje
            _buildRecycleItem(
              'Equipos electrónicos pequeños',
              'Celulares, tablets, cámaras, radios, pequeños electrodomésticos, etc.',
              Icons.devices_other,
            ),
            _buildRecycleItem(
              'Baterías',
              'Baterías de teléfonos, laptops, cámaras, controladores de juegos, etc.',
              Icons.battery_full,
            ),
            _buildRecycleItem(
              'Cables y cargadores',
              'Cables de corriente, cables USB, cargadores de dispositivos electrónicos.',
              Icons.battery_charging_full,
            ),
            _buildRecycleItem(
              'Pantallas',
              'Pantallas de computadoras, televisores, monitores, pantallas de teléfonos móviles.',
              Icons.tv,
            ),
            const SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Regresa a la pantalla anterior
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  'Regresar',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRecycleItem(String title, String description, IconData icon) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Icon(icon, color: Colors.green, size: 40),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  Text(description, style: const TextStyle(fontSize: 14)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

