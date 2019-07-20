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
          onTap: () {
            showBar(context , "list num# ${items[i]}");
            },
        );
      }
  );

  return listView;
}

void showBar(BuildContext context, String msg) {
  var bar = SnackBar(
    content: Text(msg),
    action: SnackBarAction(label: "UNDO", onPressed: () {
      onClick(context);
    }),
  ) ;

  Scaffold.of(context).showSnackBar(bar);
}

void onClick(BuildContext context){

  AlertDialog alertDialog = AlertDialog(
    title: Text("UNDO"),
    content: Text("UNDO THE OPERTION :)"),
  );

  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      }
  );
}

void main() {
  runApp(
    MaterialApp(
      title: "the Stateful Widgets",
      home: StudentsNames()
    )
  );
}

class StudentsNames extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _StudentsNames();
  }
}

class _StudentsNames extends State<StudentsNames> {

  String student;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stateful project"),),
      body:
      Container(
        margin: EdgeInsets.all(20),
        child:  Column(
           children: <Widget>[
              TextField(
                onChanged: (String userInput) {
                  setState(() {
                    student = userInput;
                  });
                },
              ),
              Padding(
                padding:  EdgeInsets.all(30),
                child:  Text("the Student is : $student")
              )
            ],
          )
      )
      ,
    );
  }

}







