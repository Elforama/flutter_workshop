import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'radio_tab.dart';

void main() => runApp(new WorkshopApp());

class WorkshopApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
  
}
