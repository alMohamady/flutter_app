import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
     home:  Center(
        child: Container(
            padding: EdgeInsets.only(top: 40, left: 10, right: 10, bottom: 20),
            alignment: Alignment.center,
            color: Colors.yellow,
            child: Column (
               children: <Widget>[
                 Row(
                     textDirection: TextDirection.ltr,
                     children: <Widget>[
                       Expanded(
                           child: Text(
                             "Ahmed",
                             textDirection: TextDirection.ltr,
                             style: TextStyle(
                               color: Colors.black,
                               backgroundColor: Colors.green,
                               fontSize: 20,
                               fontFamily: "Arimo",
                               fontWeight: FontWeight.w700,
                             ),
                           )
                       ),
                       Expanded(
                           child: Text(
                               "Senior Software Developer in mobile apps",
                               textDirection: TextDirection.ltr,
                               style: TextStyle(
                                 color: Colors.black,
                                 backgroundColor: Colors.lightBlueAccent,
                                 fontSize: 20,
                                 fontFamily: "Arimo",
                                 fontWeight: FontWeight.w700,
                               )
                           )
                       )
                     ]
                 ),
                 Row(
                     textDirection: TextDirection.ltr,
                     children: <Widget>[
                       Expanded(
                           child: Text(
                             "Mohamed",
                             textDirection: TextDirection.ltr,
                             style: TextStyle(
                               color: Colors.black,
                               backgroundColor: Colors.green,
                               fontSize: 20,
                               fontFamily: "Arimo",
                               fontWeight: FontWeight.w700,
                             ),
                           )
                       ),
                       Expanded(
                           child: Text(
                               "Senior Software Analyzer",
                               textDirection: TextDirection.ltr,
                               style: TextStyle(
                                 color: Colors.black,
                                 backgroundColor: Colors.lightBlueAccent,
                                 fontSize: 20,
                                 fontFamily: "Arimo",
                                 fontWeight: FontWeight.w700,
                               )
                           )
                       )
                     ]
                 ),
                 MyImage(),
                 MyButton()
               ]
            )
        )
    )
    );
  }
}

class MyImage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    AssetImage image = new AssetImage('images/mario.png');
    Image myImg = new Image(image: image, width: 200, height: 100,);
    return Container(child: myImg,);
  }
}

class MyButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    RaisedButton button = RaisedButton(
      onPressed: () {
        onClick(context);
      },
      color: Colors.redAccent,
      child: Text(
        "Start Mario Game",
        style: TextStyle(
          color: Colors.white,
          fontFamily: "Ranga",
          fontSize: 30,
          fontWeight: FontWeight.w700,
        ),
      ),
    );

    return Container(
        child: button,
        margin: EdgeInsets.only(top: 20),
        height: 80,
        width: 300,
    );
  }

  void onClick(BuildContext context){

    AlertDialog alertDialog = AlertDialog(
      title: Text("Mario Game :)"),
      content: Text("Have Fun with Mario Game"),
    );

    showDialog(
        context: context,
        builder: (BuildContext context) {
           return alertDialog;
        }
    );
  }
}
