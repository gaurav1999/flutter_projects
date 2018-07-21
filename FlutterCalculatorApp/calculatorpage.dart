import 'package:flutter/material.dart';

class CalculatorHome extends StatefulWidget {
  @override
  State createState() => new _CalculatorHomeState();
}

class _CalculatorHomeState extends State<CalculatorHome> {
  @override
  double num1 , num2=0.0 ,result ;
  var c;
  void clearScreen()
  {
    setState((){
      t1.text="0";
    });
  }
  void plusMinus()
  {
    setState((){
      if(double.parse(t1.text).isNegative)
      {
        t1.text="+"+t1.text.substring(1,);
      }
      else if(!double.parse(t1.text).isNegative)
      {
          t1.text="-"+t1.text;
      }
    });
  }
  void pressOperation(symbol1)
  {
     num1=double.parse(t1.text);
     c=symbol1;
     clearScreen();
  }
  void equalsTo()
  {
    setState((){
      if(c=="+")
      {
          num2=double.parse(t1.text);
          print(num2);
          result=num1+num2;
          t1.text=""+result.toString();
      }
      else if(c=="-")
      {
           num2=double.parse(t1.text);
           print(num2);
           result=num1-num2;
           t1.text=""+result.toString();

      }
      else if(c=="%")
      {
         num2=double.parse(t1.text);
         print(num2);
         result=(num1*num2)/100;
         t1.text=""+result.toString();
      }
      else if(c=="/")
      {
         num2=double.parse(t1.text);
         print(num2);
        
            result = num1 / num2;
            t1.text=""+result.toString();
         
       } 
      
      else if(c=="x")
      {
         num2=double.parse(t1.text);
         result=num1*num2;
         t1.text=""+result.toString();

      }
    });
  }
  TextEditingController t1=new TextEditingController(text:"0");
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar:  AppBar(
        title: new Text("Calculator"),
      ),
      body: new Container(
       color: Colors.white,
       child: Column(
         children: <Widget>[
          new TextField(
            controller: t1,
            textAlign: TextAlign.end,
            
          ),
         new Padding(padding: const EdgeInsets.all(10.0),),
         new Expanded(
                              child: new Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                 
                  
                  
                  children: <Widget>[
                  new Expanded(
                                    child: new MaterialButton(
                      child: new Text("C"),
                      color: Colors.white,
                      onPressed: clearScreen,
                    ),
                  ),
                  new Expanded(
                                    child: new MaterialButton(
                      child: new Text("+/-"),
                      color: Colors.white,
                      onPressed: plusMinus,
                    ),
                  ),
                   new Expanded(
                                      child: new MaterialButton(
                      child: new Text("%"),
                      color: Colors.white,
                      onPressed:() => pressOperation("%"),
                  ),
                   ),
                    new Expanded(
                                        child: new MaterialButton(
                      child: new Text("DEL"),
                      color: Colors.white,
                      onPressed: (){
                        setState((){
                          String s;
                          int l=t1.text.length;
                          s=t1.text.substring(0,l-1);
                          t1.text=s;
                        });
                      },
                  ),
                    ),
                  ],
                ),
              ),
              new Padding(padding: const EdgeInsets.all(2.0)),
              new Expanded(
                              child: new Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,

                  children: <Widget>[
                  new Expanded(
                                    child: new MaterialButton(
                      child: new Text("7"),
                      color: Colors.white,
                      onPressed:(){setState((){
                        t1.text=t1.text+"7";
                      });},
                    ),
                  ),
                  new Expanded(
                                    child: new MaterialButton(
                      child: new Text("8"),
                      color: Colors.white,
                    onPressed:(){setState((){
                        t1.text=t1.text+"8";
                      });},
                    ),
                  ),
                   new Expanded(
                                      child: new MaterialButton(
                      child: new Text("9"),
                      color: Colors.white,
                      onPressed:(){setState((){
                        t1.text=t1.text+"9";
                      });},
                  ),
                   ),
                    new Expanded(
                                        child: new MaterialButton(
                      child: new Text("/"),
                      color: Colors.white,
                       onPressed:() => pressOperation("/")
                  ),
                    ),
                  ],
                ),
              ),
              new Padding(padding: const EdgeInsets.all(2.0)),
              new Expanded(
                              child: new Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                  
                  children: <Widget>[
                  new Expanded(
                                    child: new MaterialButton(
                      child: new Text("4"),
                      color: Colors.white,
                      onPressed:(){setState((){
                        t1.text=t1.text+"4";
                      });},
                    ),
                  ),
                  new Expanded(
                                    child: new MaterialButton(
                      child: new Text("5"),
                      color: Colors.white,
                     onPressed:(){setState((){
                        t1.text=t1.text+"5";
                      });},
                    ),
                  ),
                   new Expanded(
                                      child: new MaterialButton(
                      child: new Text("6"),
                      color: Colors.white,
                      onPressed:(){setState((){
                        t1.text=t1.text+"6";
                      });},
                  ),
                   ),
                    new Expanded(
                                        child: new MaterialButton(
                      child: new Text("x"),
                      color: Colors.white,
                       onPressed:() => pressOperation("x")
                  ),
                    ),
                  ],
                ),
              ),
              new Padding(padding: const EdgeInsets.all(2.0)),
              new Expanded(
                              child: new Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                  
                 children: <Widget>[
                  new Expanded(
                                    child: new MaterialButton(
                      child: new Text("1"),
                      color: Colors.white,
                     onPressed:(){setState((){
                        t1.text=t1.text+"1";
                      });},
                    ),
                  ),
                  new Expanded(
                                    child: new MaterialButton(
                      child: new Text("2"),
                      color: Colors.white,
                      onPressed:(){setState((){
                        t1.text=t1.text+"2";
                      });},
                    ),
                  ),
                   new Expanded(
                                      child: new MaterialButton(
                      child: new Text("3"),
                      color: Colors.white,
                      onPressed:(){setState((){
                        t1.text=t1.text+"3";
                      });},
                  ),
                   ),
                    new Expanded(
                                        child: new MaterialButton(
                      child: new Text("-"),
                      color: Colors.white,
                       onPressed:() => pressOperation("-"),
                  ),
                    ),
                  ],
                ),
              ),
              new Padding(padding: const EdgeInsets.all(2.0)),
              new Expanded(
                              child: new Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                  
                 children: <Widget>[
                  new Expanded(
                                    child: new MaterialButton(
                      child: new Text("0"),
                      color: Colors.white,
                      onPressed:(){setState((){
                        t1.text=t1.text+"0";
                      });},
                    ),
                  ),
                  new Expanded(
                                    child: new MaterialButton(
                      child: new Text("."),
                      color: Colors.white,
                      onPressed:(){setState((){
                        t1.text=t1.text+".";
                      });},
                    ),
                  ),
                   new Expanded(
                                      child: new MaterialButton(
                      child: new Text("="),
                      color: Colors.white,
                      onPressed: equalsTo,
                  ),
                   ),
                    new Expanded(
                                        child: new MaterialButton(
                      child: new Text("+"),
                      color: Colors.white,
                      onPressed:() => pressOperation("+"),
                  ),
                    ),
                  ],
                ),
              ),

                    
         ],
       ),
      ) ,
    );
  }
}