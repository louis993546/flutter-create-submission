import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TBD',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello World'),
        ),
        body: Center(
          child: Text('Something'),
        ),
      ),
    );
  }
}
