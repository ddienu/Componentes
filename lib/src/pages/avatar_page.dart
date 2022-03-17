import 'package:flutter/material.dart';


class AvatarPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text ('AvatarPage'),
        actions: [

          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://img.olympicchannel.com/images/image/private/t_1-1_600/f_auto/v1538355600/primary/fzlkiegp1vzcpvrtm1m7'),
              radius: 30.0,
            ),
          ),

          Container(
            margin: EdgeInsets.only( right: 10.0),
            child: CircleAvatar(
              child: Text('ML'),
              backgroundColor: Colors.amber,

            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage('https://s3.amazonaws.com/arc-wordpress-client-uploads/infobae-wp/wp-content/uploads/2016/07/30111616/ma-long-1920-2.jpg'),
          placeholder: AssetImage('Assets/jar-loading.gif'),
          fadeInDuration: Duration( milliseconds: 200),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
     );

    }
  }