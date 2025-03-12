import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Registro de Troca Garcia:1193',
      debugShowCheckedModeBanner: false, // Elimina la barra roja de depuración
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RegistroTrocaScreen(),
    );
  }
}

class RegistroTroca {
  final String modelo;
  final String marca;
  final double precio;

  RegistroTroca({
    required this.modelo,
    required this.marca,
    required this.precio,
  });
}

class RegistroTrocaScreen extends StatelessWidget {
  // Lista de mapas con datos de registro de troca
  final List<Map<String, dynamic>> registros = [
    {
      'modelo': 'F-150',
      'marca': 'Ford',
      'precio': 45000.00,
    },
    {
      'modelo': 'Silverado',
      'marca': 'Chevrolet',
      'precio': 50000.00,
    },
    {
      'modelo': 'Ram 1500',
      'marca': 'Dodge',
      'precio': 48000.00,
    },
    {
      'modelo': 'Tundra',
      'marca': 'Toyota',
      'precio': 52000.00,
    },
    {
      'modelo': 'Titan',
      'marca': 'Nissan',
      'precio': 47000.00,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Registro de Troca Garcia:1193',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.lightBlue, // Color azul claro
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(16),
        itemCount: registros.length,
        separatorBuilder: (context, index) => SizedBox(height: 16),
        itemBuilder: (context, index) {
          final registro = registros[index];
          return Card(
            elevation: 4, // Sombra
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12), // Bordes redondeados
            ),
            color: Colors.primaries[
                index % Colors.primaries.length], // Colores diferentes
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Modelo: ${registro['modelo']}',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Marca: ${registro['marca']}',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Precio: \$${registro['precio'].toStringAsFixed(2)}',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
