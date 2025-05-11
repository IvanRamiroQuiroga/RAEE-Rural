import 'package:flutter/material.dart';

class RecyclingCentersScreen extends StatelessWidget {
  const RecyclingCentersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Puntos de Recolección'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Encuentra puntos de recolección y organizaciones cerca de ti',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),

            Image.asset(
              'assets/images/map_simulation.png',
              fit: BoxFit.cover,
              width: double.infinity,
              height: 250,
            ),
            const SizedBox(height: 20),
            // Título de ubicación
            const Text(
              'Ubicación: Vereda La Esperanza, Municipio de Ubaté, Cundinamarca.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            const Text(
              'Vereda El Progreso, Municipio de Pacho, Cundinamarca.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {

              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text(
                'Ver Mapa',
                style: TextStyle(fontSize: 16),
              ),
            ),
            const SizedBox(height: 20),
            // Lista de ubicaciones con iconos
            Expanded(
              child: ListView(
                children: [
                  _buildLocationItem('Vereda La Esperanza, Municipio de Ubaté, Cundinamarca.'),
                  _buildLocationItem('Vereda El Progreso, Municipio de Pacho, Cundinamarca.'),
                  _buildLocationItem('Vereda Los Olivos, Municipio de Cundinamarca.'),
                  _buildLocationItem('Vereda El Carmen, Municipio de Pacho, Cundinamarca.'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Función para construir cada item de ubicación con un ícono
  Widget _buildLocationItem(String location) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Icon(
            Icons.location_on,
            color: Colors.orange,
            size: 24,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              location,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
