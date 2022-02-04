
import 'package:flutter/material.dart';


class HomePageTemp extends StatelessWidget {
  

  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco' ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
        
      )
      ,body: ListView(
        children: _crearItems()
      )
     );
        
}

  List<Widget> _crearItems() {

    return opciones.map( ( item ) {

      return Column(
        children: <Widget>[
          ListTile(
            title: Text( item ),
          ),
          Divider()
        ],      
      );
    }).toList();
  }

}
