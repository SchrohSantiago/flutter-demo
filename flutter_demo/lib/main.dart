import 'package:flutter/material.dart';
import 'package:flutter_demo/screens/screens.dart';

// import 'package:flutter_demo/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget { 
  @override 
  Widget build(BuildContext context) { // Método que construye el widget de la aplicación
    return MaterialApp( // Crea un widget MaterialApp que sirve como el contenedor principal de la app
      home: ListviewbuilderScreen(), // Establece NutritionScreen como la pantalla inicial de la aplicación
    );
  }
}

