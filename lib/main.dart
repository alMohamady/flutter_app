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
            appBar: AppBar(title: Text("The big List")),
            body: myBigList(),

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


List<String> getDataSource() {

  var items = List<String>.generate(1000, (i) => "item ${i + 1} ");
  return items;
}

Widget myBigList() {

  var items = getDataSource();

  var listView = ListView.builder(
      itemBuilder: (context, i) {

        return ListTile (
          leading: Icon(Icons.ac_unit),
            title: Text(items[i]),
            subtitle: Text("bla bla bla ........"),
          onTap: () { debugPrint("list num# ${items[i]}"); },
        );
      }
  );

  return listView;
}










