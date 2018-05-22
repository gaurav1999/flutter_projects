import 'package:flutter/material.dart';
void main()
{
  runApp(new Myapp());
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Home Page"),
      ),
      body: new Center(child: new Text("Hello Stateful Widget"),),
    );
  }
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title:  "My app",
      home: new HomePage(),
    );
  }
}
