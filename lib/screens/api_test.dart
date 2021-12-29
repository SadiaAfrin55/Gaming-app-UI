import 'package:flutter/material.dart';

class TestApi extends StatefulWidget {
  _TestApiState createState() => _TestApiState();
}

class _TestApiState extends State<TestApi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test Api'),
      ),
      body: Center(
        child: Text(
          'Text',
        ),
      ),
    );
  }
}
