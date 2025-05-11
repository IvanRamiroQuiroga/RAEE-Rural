import 'package:flutter/material.dart';
import 'educational_screen.dart';
import 'recycling_location_screen.dart';
import 'what_to_recycle_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EcoRecycle'),
        backgroundColor: Colors.green,
        centerTitle: true,
        actions: [
          // Imagen de perfil en la esquina superior derecha
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                // Al hacer clic en la imagen del perfil, ir a la pantalla educativa
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EducationalScreen(),
                  ),
                );
              },
              child: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/images/profile_picture.png'),  // Ruta de la imagen
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Text(
                'Ivan Quiroga',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.school),
              title: const Text('Sección Educativa'),
              onTap: () {
                // Navegar a la pantalla de Sección Educativa
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const EducationalScreen()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.notifications),
              title: const Text('Notificaciones'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.account_box),
              title: const Text('Mis datos'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text('Salir'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Image(
                  image: AssetImage('assets/images/recycling_logo.png'),
                  width: 100,
                  height: 100,
                ),
                const SizedBox(height: 20),
                const Text(
                  'Hola, Ivan!',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                const Text(
                  '¡Estamos listos! La recolección será el 15 de mayo a las 6:00 PM.',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 40),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    // Redirige a la pantalla de reciclaje
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RecyclingLocationScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    'Ver Ubicación de reciclaje',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                const SizedBox(height: 20),
                GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  children: [
                    _buildGridButton('Ver puntos de recolección', Icons.location_on, () {
                      Navigator.pushNamed(context, '/recyclingCenters');  // Navegar a la pantalla de puntos de recolección
                    }),
                    _buildGridButton('Encontrar Recicladores', Icons.search, () {
                      Navigator.pushNamed(context, '/recyclers');  // Navegar a la pantalla de recicladores
                    }),
                    _buildGridButton('¿Qué puedo reciclar?', Icons.recycling, () {
                      // Navegar a la pantalla de "¿Qué reciclar?"
                      Navigator.pushNamed(context, '/whatToRecycle');  // Ruta a la nueva pantalla
                    }),
                    _buildGridButton('Recolecciones programadas', Icons.calendar_today, () {
                      Navigator.pushNamed(context, '/scheduledCollections');  // Navegar a la pantalla de recolecciones programadas
                    }),
                  ],
                ),
                const SizedBox(height: 30),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  color: Colors.yellow.shade700,
                  child: const Text(
                    'Programe su primera recolección a domicilio:',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/recyclingCenters');
                  },
                  child: const Text(
                    'Ver mapa',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildGridButton(String label, IconData icon, Function() onPressed) {
    return Card(
      elevation: 5,
      child: InkWell(
        onTap: onPressed,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: Colors.green),
            const SizedBox(height: 10),
            Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}

