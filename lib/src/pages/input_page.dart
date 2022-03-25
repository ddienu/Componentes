import 'package:flutter/material.dart';


class InputPage extends StatefulWidget {
  const InputPage({ Key? key }) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String _nombre   = '';
  String _email    = '';
  String _password = '';
  String _fecha    = '';

  TextEditingController _inputFieldDateController = new TextEditingController();

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
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          _crearFecha(context),
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
  
      title: Text ('Nombre es: $_nombre'),
      subtitle: Text ('Correo es: $_email'),
   

    );
  }

  _crearEmail() {

    
    return TextField(
      
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        hintText: 'Correo electrónico',
        labelText: 'Email',
        suffixIcon: Icon (Icons.alternate_email),
        icon: Icon (Icons.email),

      ),
      onChanged: (valor){ 
        setState(() {
          
        _email = valor;

        });
      },
    );
  }

  _crearPassword() {

    return TextField(
      
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        hintText: 'Contraseña',
        labelText: 'Password',
        suffixIcon: Icon (Icons.lock_open),
        icon: Icon (Icons.lock),

      ),
      onChanged: (valor){ 
        setState(() {
          
        _password = valor;

        });
      },
    );
  }

  _crearFecha( BuildContext context) {

     return TextField(

      enableInteractiveSelection: false,
      controller: _inputFieldDateController,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        hintText: 'Feha de nacimiento',
        labelText: 'Fecha de nacimiento',
        suffixIcon: Icon (Icons.perm_contact_calendar),
        icon: Icon (Icons.calendar_today),

      ),
      onTap: (){

        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);


      },
    );
  }

  void _selectDate(BuildContext context)  async {

    DateTime? picked = await showDatePicker(
      context: context, 
      initialDate: new DateTime.now(),
      firstDate: new DateTime(2018)
      lastDate: new DateTime(2025)
    );

    if ( picked != null ) {
      setState(() {
        _fecha = picked.toString();
        _inputFieldDateController.text = _fecha;
      });
    }
  }
}
      