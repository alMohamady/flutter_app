import 'package:flutter/material.dart';


void main() => runApp(MyFlutterApp());


class MyFlutterApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  MaterialApp(
        title: "First App",
        home: Scaffold(
            appBar: AppBar(
                title: Text("Hello Flutter")
            ),
            body: Material(
                color: Colors.lightBlueAccent,
                child: Center(
                    child: Text(
                        "Hello Wrold",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(color: Colors.white, fontSize: 30)
                    )
                )
            )
        )
    );
  }
}







