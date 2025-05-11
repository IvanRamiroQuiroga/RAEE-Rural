import 'package:flutter/material.dart';

class RecyclersScreen extends StatelessWidget {
  const RecyclersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Encontrar Recicladores'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              'Encuentra y contacta a un recolector cerca de ti',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Ingresa su ubicación',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            // List of recyclers
            Expanded(
              child: ListView(
                children: [
                  _buildRecyclerItem(
                    'Andrés Ramírez',
                    'Recolector independiente - Motocicleta',
                    'Recoge: Celulares, tablets y pequeños electrodomésticos',
                    'assets/images/andres_profile.png', // Image path for Andrés
                  ),
                  _buildRecyclerItem(
                    'Luz Castañeda',
                    'Recolectora independiente - Bicicleta',
                    'Recoge: Computadoras, cargadores y accesorios electrónicos',
                    'assets/images/luz_profile.png', // Image path for Luz
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Function to build each recycler item
  Widget _buildRecyclerItem(String name, String type, String items, String imagePath) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(imagePath), // Use the passed image path
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Text(type, style: const TextStyle(fontSize: 14)),
                Text(items, style: const TextStyle(fontSize: 14, color: Colors.orange)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
