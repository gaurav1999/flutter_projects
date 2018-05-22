import 'package:flutter/material.dart';
void main()
{
  runApp(new MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
          home: new Scaffold(
            appBar: new AppBar(
               title: new Text("Hare Krishna"),
               backgroundColor: Colors.blue,
            ),
            backgroundColor: Colors.blueGrey,
            
          )
    );
    
  }
}