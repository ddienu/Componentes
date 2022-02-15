import 'package:flutter/services.dart' show rootBundle;

import 'dart:convert';



class _MenuProvider {

    List opciones = [];

    _MenuProvider();

  Future<List> cargarData() async {

    final resp = await rootBundle.loadString('data/menu_opts.json');
    
      Map dataMap = json.decode( resp ); 
        print ( dataMap ['NombreApp'] );
        opciones = dataMap ['rutas'];

    return opciones; 

    }

}

final menuProvider = _MenuProvider();