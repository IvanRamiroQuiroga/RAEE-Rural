import 'package:flutter/material.dart';
import 'package:prototipo_funcional/screens/recycling_centers_screen.dart';
class ScheduledCollectionsScreen extends StatelessWidget {
  const ScheduledCollectionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recolecciones Programadas'),
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Regresar a la pantalla anterior
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Tienes 1 recolección programada',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            // Detalle de la recolección programada
            const Text(
              'Asociación de Reciclaje de Residuos Electrónicos',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            const Text(
              '01/04 - Dispositivos electrónicos',
              style: TextStyle(fontSize: 16, color: Colors.orange),
            ),
            const SizedBox(height: 20),
            const Text(
              'Prepara tus dispositivos electrónicos para la recolección. Asegúrate de que estén listos y mantente atento a tu teléfono.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 40),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Acción para cancelar la recolección
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    'Cancelar recolección',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    // Acción para reprogramar la recolección
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    'Reprogramar',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Text(
              'Accede al mapa para programar nuevas recolecciones a domicilio',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Redirigir a la pantalla RecyclingCentersScreen cuando se presiona el botón "Ir al mapa"
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RecyclingCentersScreen(), // Redirige a la pantalla del mapa
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text(
                'Ir al mapa',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
