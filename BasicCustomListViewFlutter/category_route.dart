import 'category.dart';
import 'package:flutter/material.dart';

class CategoryRoute extends StatelessWidget {
  const CategoryRoute();
  static const _categoryNames= <String>[ 'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',];
    static const _baseColors=<Color>[
      Colors.teal,
      Colors.pink,
      Colors.blue,
      Colors.limeAccent,
      Colors.green,
      Colors.cyanAccent,
      Colors.redAccent,
      Colors.purple
    ];
    
    
    Widget _buildCategoryWidgets(List<Widget> categories ){
        return ListView.builder( itemBuilder: (BuildContext context, int index) => categories[index],
      itemCount: categories.length,);
    }
  @override
  Widget build(BuildContext context) {
    final categories=<Category>[];
    for(var i=0;i<_categoryNames.length;i++)
    {
      categories.add(Category(
         name: _categoryNames[i],
         color: _baseColors[i],
         iconLocation: Icons.cake,
      ));
    }
    final listView=Container(
      color:Colors.green,
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child:_buildCategoryWidgets(categories) ,
    );
    final apppBar=AppBar(
        backgroundColor: Colors.blue,
        elevation: 0.0,
        title: Text(
          'Unit Converter',
          style: TextStyle(fontSize: 30.0,color: Colors.white10,),
          
        ),
        centerTitle: true,

    );
    return Scaffold(
      appBar: apppBar,
      body: listView,
    );
   
  }
}