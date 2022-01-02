import 'package:flutter/material.dart';

class Newspaper_home extends StatefulWidget {
  _Newspaper_homeState createState() => _Newspaper_homeState();
}

class _Newspaper_homeState extends State<Newspaper_home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('news home'),
      ),
      body: Center(
        child: Text(
          'Text',
        ),
      ),
    );
  }
}
