import 'package:flutter/material.dart';
class Category extends StatelessWidget {
  final String name;
  final ColorSwatch color;
  final IconData iconLocation;
const Category({
    Key key,
     this.name,
     this.color,
     this.iconLocation,
  })  : assert(name != null),
        assert(color != null),
        assert(iconLocation != null);
  
  @override
  Widget build(BuildContext context) {
    return new Material(
        color: Colors.transparent,
          child: new Container(
        height: 100.0,
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          borderRadius: BorderRadius.circular(50.0),
          
          highlightColor: color,
          splashColor: color,
          onTap: (){print('I was tapped');},
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children:[
                 Padding(
                   padding: EdgeInsets.all(16.0),
                   child: Icon(
                     iconLocation,
                     size: 60.0,
                   ),
                 ),
                 Center(
                  
                    child: Text(
                      
                      name,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline,
                    ),
                 ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}