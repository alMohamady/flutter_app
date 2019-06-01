import 'package:flutter/material.dart';
import 'layouts/home_screen.dart';


void main() => runApp(MyFlutterApp());


class MyFlutterApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "First App",
        home: Scaffold(
            appBar: AppBar(
                title: Text("Hello Flutter")
            ),
            body: HomeScreen()
        )
    );
  }
}







