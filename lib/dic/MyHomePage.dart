import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget{
  const MyHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text('Here is Title'),
          leading: Icon(Icons.punch_clock),
        ),
        body:Container(
          decoration: BoxDecoration(border: Border.all(width: 10, color: Colors.blueGrey), color: Colors.lightBlue),
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(30),
          child: Text('hello world', style: TextStyle(color: Colors.amberAccent))
        ),
        bottomNavigationBar: BottomAppBar(child: Text('hi'))
    );
  }
}