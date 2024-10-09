import 'dart:developer';

import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState(); // Es similar a un UseState, lo hacemos para manejar estados
}

class _CounterScreenState extends State<CounterScreen> { // Converitmos la clase en un State, para manejar estados
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        centerTitle: true,
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('123'),
        ),
        leadingWidth: 40,
        toolbarHeight: 80,
        backgroundColor: Colors.blueAccent,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              child: const Icon(Icons.add),
              onTap: () {
                log('tap menu');
              },
            ),
          ),
        ],
      ),
      body: Center(child: Text('Contador: $counter')),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueAccent,
        child: const Icon(Icons.plus_one),
        onPressed: () { // cuando clickeamos
          counter++;
          setState(() {
            log('click button $counter');
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}