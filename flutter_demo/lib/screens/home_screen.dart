import 'dart:developer';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget { // Widget SIN estado
 // Es un constructor
 const HomeScreen({super.key});
   // Por perfomance debemos iniciar con StatelessWidget

  @override
  Widget build(BuildContext context) { // Retorna un Widget
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body:Center(child: Text("Hola mundoood!")) ,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blueAccent,
          child: Icon(Icons.plus_one),
          onPressed: () => {
            log('Clicked')
          },
        ),
      );
  }
}