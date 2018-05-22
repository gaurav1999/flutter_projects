import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main()=> runApp(new MyLogin());
class MyLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new LoginPage(),
      theme: new ThemeData(
        primarySwatch: Colors.cyan
      )
    );
  }
}
class LoginPage extends StatefulWidget
{
  @override
  State createState() => new LoginPageState();
      
      
}
class LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin
{
  AnimationController _iconAnimationController;
  Animation<double> _iconAnimation;
  @override
  void initState()
  {
    super.initState();
    _iconAnimationController=new AnimationController(vsync: this,
      duration: new Duration(microseconds: 300) );
     _iconAnimation=new CurvedAnimation(
       parent: _iconAnimationController,
       curve: Curves.easeOut
     );  
     _iconAnimation.addListener(()=>this.setState((){}));
     _iconAnimationController.forward();
  }
  
  @override
  Widget build(BuildContext context)
  {
    return new Scaffold(
         
         body: new Stack(
           fit: StackFit.expand,
           children: <Widget>[
             new Image(
               image: new AssetImage('assets/flowers.jpeg'),
               fit:BoxFit.cover ,
               color: Colors.black87, //Opacity of black color is 87
               colorBlendMode: BlendMode.darken ,
               
             ),
           new Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
                new Icon(
                   FontAwesomeIcons.facebook,
                   color: Colors.white,
                   size: _iconAnimation.value *150,
                   
                  
                 ),
                              new Form(
                           child: new Theme(
                              data: new ThemeData(
                                brightness: Brightness.dark,
                                primarySwatch: Colors.teal,
                                inputDecorationTheme: new InputDecorationTheme(
                                  labelStyle: new TextStyle(color: Colors.teal,fontSize:20.0,)

                                ),
                               
                              ),
                              child: new Container(
                                padding: const EdgeInsets.all(40.0),
                                child: new Column( crossAxisAlignment: CrossAxisAlignment.center,
                                 children: <Widget>[
                                   
                                   new TextFormField(
                                     decoration: new InputDecoration(
                                     hintText: "Enter Email",
                                       
                                     ),
                                     keyboardType: TextInputType.emailAddress,
                                    
                                   ),
                                   new TextFormField(
                                     decoration: new InputDecoration(
                                       hintText:"Enter Password",

                                     ),
                                     keyboardType: TextInputType.text,
                                     obscureText: true,
  
                                   ),
                                   new Padding(
                                     padding: const EdgeInsets.only(top: 30.0),
                                   ),
                                   new MaterialButton(
                                         
                                         color:Colors.green,
                                         textColor: Colors.white,
                                         child: new Icon(FontAwesomeIcons.signInAlt),
                                         onPressed:() => {} ,
                                         height: 40.0,
                                         minWidth: 60.0,
                                         splashColor: Colors.lightGreenAccent,
                                         
                                   ),
                                 ],
                             ),
                              ),
                           ),
               ),
             ],
           )
           ],

         ),
    );

  }

}