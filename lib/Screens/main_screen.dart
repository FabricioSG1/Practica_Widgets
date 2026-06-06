import 'package:flutter/material.dart'; 
import "package:aplicacion_2/Screens/containerScreen.dart"; 
import "package:aplicacion_2/Screens/ColumnAndRow.dart"; 
import 'package:aplicacion_2/Screens/ElementosUI.dart';

class MainScreen extends StatelessWidget { 
  const MainScreen({super.key}); 

  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 
      appBar: AppBar( 
        title: const Text("Inicio"), 
        backgroundColor: Theme.of(context).colorScheme.inversePrimary, 
      ), 
      body: ListView( 
        children: [ 
          ListTile( 
            leading: const Icon(Icons.padding, color: Color.fromARGB(255, 112, 112, 112)), 
            title: const Text("1. Container, Padding y SizedBox"), 
            subtitle: const Text("Cajas, Bordes y espacios."), 
            trailing: const Icon(Icons.arrow_forward), 
            onTap: () { 
              Navigator.push( 
                context, 
                MaterialPageRoute( 
                  builder: (context) => const CounterScreen(), 
                ), 
              ); 
            }, 
          ), 
          const Divider(), 
          ListTile( 
            leading: const Icon(Icons.view_column, color: Color.fromARGB(255, 2, 131, 79)), 
            title: const Text("Column and Row"), 
            // CORREGIDO: Ortografía de "Alineación"
            subtitle: const Text("Alineación vertical y horizontal"), 
            trailing: const Icon(Icons.arrow_forward), 
            onTap: () {
              Navigator.push( 
                context, 
                MaterialPageRoute( 
                  builder: (context) => const ColumnAndRow(), 
                ), 
              ); 
             }, 
          ), 
          const Divider(), 
          ListTile( 
            leading: const Icon(Icons.padding, color: Color.from(alpha: 1, red: 0.894, green: 0.792, blue: 0.639)), 
            title: const Text("3. Elementos UI"), 
            subtitle: const Text("Text, Image, Icon y Botones"), 
            trailing: const Icon(Icons.arrow_forward), 
            onTap: () { 
              
              Navigator.push( 
                context, 
                MaterialPageRoute( 
                  builder: (context) => const ElementosUI(), 
                ), 
              ); 
            }, 
          ),          
        ], 
      ), 
    ); 
  } 
}
