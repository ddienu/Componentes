import 'package:flutter/material.dart';



class SliderPage extends StatefulWidget {
  SliderPage({Key? key}) : super(key: key);

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

double _valorSlider = 100.0;
bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text ('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only( top: 50.0),
        child: Column(
          children: [
            _crearSlider(),
            _checkBox(),
            Expanded (child: _crearImagen()),
          ],
        ),
      ),
    );
  }

  _crearSlider() {

    return Slider(
      activeColor: Colors.orangeAccent,
      label: 'Tamaño de la imágen',
      // divisions: 20,
      value: _valorSlider,
      min: 10.0,
      max: 400.0,
      onChanged: (_bloquearCheck) ? null : ( valor ){

        setState(() {
        _valorSlider = valor;
        });
      }
      );
  }

  _crearImagen() {

    return Image(
     image: NetworkImage('https://img2.freepng.es/20191009/owi/transparent-orange-5d9de576bcfb39.4355972915706289827741.jpg'),
     fit: BoxFit.contain,
     width: _valorSlider,
    );

  }

  _checkBox() {

    return CheckboxListTile(
      title: Text('Bloquear slider'),
      value: _bloquearCheck, 
      onChanged: ( valor ){
        setState(() {
        _bloquearCheck = valor!;
          
        });

      });
  }
} 
          
