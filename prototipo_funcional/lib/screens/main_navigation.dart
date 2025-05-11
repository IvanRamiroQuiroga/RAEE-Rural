import 'package:flutter/material.dart';
import 'package:prototipo_funcional/screens/recycling_centers_screen.dart';
import 'package:prototipo_funcional/screens/educational_screen.dart';
import 'package:prototipo_funcional/screens/profile_screen.dart';
import 'package:prototipo_funcional/screens/home_screen.dart';
import 'package:prototipo_funcional/screens/map_screen.dart';


class MainNavigation extends StatefulWidget {
  const MainNavigation({Key? key}) : super(key: key);

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    MainScreen(),
    MapScreen(),
    RecyclingCentersScreen(),
    EducationalScreen(),
    ProfileScreen(),
  ];

  final List<String> _titles = [
    'Inicio',
    'Mapa',
    'Centros de reciclaje',
    'Educación',
    'Perfil',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titles[_currentIndex]),
        centerTitle: true,
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
          BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Mapa'),
          BottomNavigationBarItem(icon: Icon(Icons.location_city), label: 'Centros'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'Educación'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
        ],
      ),
    );
  }
}

