import 'package:flutter/material.dart';

import 'category.dart';

const _categoryName='cake';
const _categoryIcon=Icons.cake;
const _categoryColor=Colors.green;
void main()
{
  runApp(HelloApp());
}
class HelloApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unit Converter',
      home: Scaffold(
        backgroundColor: Colors.green[50],
        body: Center(
          child: Category(
            name: _categoryName,
            color: _categoryColor,
            iconLocation: _categoryIcon,
          ),
        ),
      ),
    );
  }
}