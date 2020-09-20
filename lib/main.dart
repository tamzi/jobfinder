import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Job Finder'),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: SafeArea(
          child: Container(),
        ));
  }
}
