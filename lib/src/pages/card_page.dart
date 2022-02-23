import 'package:flutter/material.dart';



class CardPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: [
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
        ],
      ),
    );
  }

  _cardTipo1() {

    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon ( Icons.photo_album, color: Colors.blue),
            title: Text ('Titulo de la primera tarjeta'),
            subtitle: Text ('Este espacio es tomado como ejemplo para la elaboración de la primera tarjeta '),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlatButton(
                child: Text('Cancelar'),
                onPressed: (){},
              ),
              FlatButton(
                child: Text( 'Ok' ),
                onPressed: (){},
              )
            ],
          )
        ],
      ),
    );
  }

  _cardTipo2() {

    return Card(
       child: Column(
         children: [

           FadeInImage(
             image: NetworkImage('https://www.nationalgeographic.com.es/medio/2018/02/27/playa-de-isuntza-lekeitio__1280x720.jpg'),
             placeholder: AssetImage ('Assets/jar-loading.gif'),
             fadeInDuration: Duration( milliseconds: 200),
             height: 250.0,
             fit: BoxFit.cover,
           ),
           Container(
             padding: EdgeInsets.all(10.0),
             child: Text('Título de la imágen'),
           ),
         ],
       ),
    );
  }
}