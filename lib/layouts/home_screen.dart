import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
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
                 )
               ]
            )
        )
    );
  }
}
