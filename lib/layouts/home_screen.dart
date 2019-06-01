import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
       child:  Container(
            alignment: Alignment.center,
            color: Colors.yellow,
            child: Text("Hi Flutter",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                color: Colors.black,
                fontSize: 70,
                fontFamily: "Arimo",
                fontWeight: FontWeight.w700,
              ),
            )
        )
    );
  }
}