import 'package:flutter/material.dart';


class InputPage extends StatefulWidget {
  const InputPage({ Key? key }) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String? _nombre;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs de texto'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: [
          _crearInputs(),
          Divider(),
          _crearPersona(),
        ],
      ),
    );
  }

  Widget _crearInputs() {

    return TextField(
      autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        counter: Text('Letras ${_nombre?.length}'),
        hintText: 'Nombre de la persona',
        labelText: 'Nombre',
        helperText: 'Sólo nombre',
        suffixIcon: Icon (Icons.accessibility),
        icon: Icon (Icons.account_circle_sharp),

      ),
      onChanged: (valor){ 
        setState(() {
          
        _nombre = valor;

        });
      },
    );
    
  }

  Widget _crearPersona() {

    return ListTile(
      title: Text ('Nombre es: $_nombre')

    );
  }
}