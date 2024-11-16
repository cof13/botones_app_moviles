import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Botones'),
        backgroundColor: Colors.blueGrey[900], 
        elevation: 2,
      ),
      body: Container(
        color: const Color.fromARGB(255, 67, 67, 67),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            crearBoton('Swipe to...', const Color.fromARGB(255, 202, 102, 222)),
            SizedBox(height: 15),
            crearBoton('Swipe to...', const Color.fromARGB(255, 237, 125, 172)),
            SizedBox(height: 15),
            crearBoton('Swipe to...', const Color.fromARGB(255, 60, 221, 227)),
            SizedBox(height: 15),
            crearBoton('Swipe to...', const Color.fromARGB(255, 135, 124, 233)),
            SizedBox(height: 15),
            crearBoton('Swipe to...', const Color.fromARGB(255, 226, 137, 214)),
            SizedBox(height: 15),
            crearBoton('Swipe to...', const Color.fromARGB(255, 109, 172, 206)),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: const Color.fromARGB(255, 251, 251, 251)),
            label: 'Buscar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.note, color:  const Color.fromARGB(255, 251, 251, 251)),
            label: 'Notas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on, color:  const Color.fromARGB(255, 251, 251, 251)),
            label: 'Ubicacion',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 252, 252, 252),
        unselectedItemColor: const Color.fromARGB(255, 253, 253, 253),
        onTap: _onItemTapped,
        backgroundColor: Colors.blueGrey[900],
        showSelectedLabels: true,
        showUnselectedLabels: true,
      ),
    );
  }

  Widget crearBoton(String texto, Color color) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 1),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          texto,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.white,
            letterSpacing: 1.2,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shadowColor: Colors.black.withOpacity(0.3),
          elevation: 12,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          side: BorderSide(
            color: Colors.white,
            width: 2,
          ),
        ),
      ),
    );
  }
}
