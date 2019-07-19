import 'package:flutter/material.dart';
import 'layouts/home_screen.dart';


//void main() => runApp(MyFlutterApp());

class MyFlutterApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  HomeScreen();
  }
}

void main() {
  runApp(
      MaterialApp(
          title: "My List View",
          home: Scaffold(
            body: myListView(),
          )
      )
  );
}

Widget myListView() {
  var list = ListView(
    children: <Widget>[

      ListTile(
        leading: Icon(Icons.access_alarm),
        title: Text("My alarm"),
        subtitle: Text("the body of the alam list"),
        trailing: Icon(Icons.accessibility),
        onTap: () {
          debugPrint("Hello world");
        },
      ),
      ListTile(
        leading: Icon(Icons.adb),
        title: Text("My android"),
        subtitle: Text("the body of the android list"),
        trailing: Icon(Icons.image),
      ),      ListTile(
        title: Text("My android"),
        trailing: Icon(Icons.image),
      ),

    ],
  );
  return list;
}










