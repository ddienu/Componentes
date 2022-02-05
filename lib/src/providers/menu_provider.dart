import 'package:flutter/services.dart' show rootBundle;



class _MenuProvider {

    List opciones = [];

    _MenuProvider(){

      cargarData();

    }

  void cargarData() {

    rootBundle.loadString('data/menu_opts.json')
    .then( (data){

      print (data);

    });
    

    }

}

final menuProvider = _MenuProvider();