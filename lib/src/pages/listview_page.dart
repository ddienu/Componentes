import 'package:flutter/material.dart';


class ListaPage extends StatefulWidget {
  ListaPage({Key? key}) : super(key: key);

  @override
  State<ListaPage> createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {

  ScrollController _scrollController = new ScrollController();

  final List<int> _listaNumeros = [];
  int _ultimoItem = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _agregar10();

    _scrollController.addListener(() { 

      if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent);
      _agregar10();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listas'),
      ),
      body: _crearLista(),
    );
  }

  _crearLista() {

    return ListView.builder(
      controller: _scrollController,
      itemCount: _listaNumeros.length,
      itemBuilder: (BuildContext context, int index){

        final imagen = _listaNumeros[index];

        return FadeInImage(
          image: NetworkImage('https://picsum.photos/500/300/?image=$imagen'),
          placeholder: AssetImage('Assets/jar-loading.gif')
          
          );
      },
    );
    }

  void _agregar10() {

    for (var i = 1; i < 10; i++) {
       _ultimoItem++;
       _listaNumeros.add(_ultimoItem);
     }
     setState(() {
       
     });
  }
}