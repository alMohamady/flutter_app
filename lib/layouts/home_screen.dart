import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
       child:  Container(
            alignment: Alignment.center,
            color: Colors.yellow,
            width: 200,
            height: 200,
            //margin: EdgeInsets.only(left: 30, top: 20),
            padding: EdgeInsets.all(50),
            child: Text("Hi Flutter", textDirection: TextDirection.ltr,
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            )
        )
    );
  }
}