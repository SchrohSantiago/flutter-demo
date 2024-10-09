import 'package:flutter/material.dart';

class ListviewbuilderScreen extends StatelessWidget { //El widget ListView en Flutter se utiliza para mostrar una lista desplazable de elementos
  const ListviewbuilderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Builder Screen'),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index){
            return ListTile(
              leading: Icon(Icons.check_box), // Encabezado de la fila
              title: Text("Elemento nro $index"),
              subtitle: Text('Subtitulo de la lista'),
              trailing: Icon(Icons.people),
            );
          },
        ),
      ),
    );
  }
}