import 'package:flutter/material.dart';
void main()
{
  runApp(new MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "MyApp",
      home: new HomePage(),
      theme: new ThemeData(
        primarySwatch: Colors.red,
        brightness: Brightness.light,
        accentColor: Colors.green,
      ),
    );
  }
}



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}



class _HomePageState extends State<HomePage> {
 String MyText="Hello World";
 String NewText="Golu";
  void _changeText()
  {
    setState((){
      if(MyText.startsWith("H"))
        {
          MyText="Welcome";
        }
        else
          {
            MyText="Hello World";
          }

    });

  }
 void _newChangeText()
 {
   setState((){
     if(NewText=="Golu")
     {
       NewText="Krishna";
     }
     else
     {
       NewText="Golu";
     }

   });

 }

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Home Page"),
        
      ),
       floatingActionButton: new FloatingActionButton(
         onPressed:_newChangeText ,
         child: new Icon(Icons.accessibility),
       ),
       body: new Container(
         padding: const EdgeInsets.all(8.0),
         child: new Center(
           child: new Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               new Text(MyText),
               new Text(NewText),
               new RaisedButton(
                 child: new Text("Click",style: new TextStyle(
                   color: Colors.white,
                   fontSize: 30.0,

                 ),),
                 color: Colors.blue,

                 onPressed: _changeText ,
               )
             ],
           ),
         ),

       ));


  }
}
