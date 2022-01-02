import 'package:flutter/material.dart';

class Newspaper_home extends StatefulWidget {
  _Newspaper_homeState createState() => _Newspaper_homeState();
}

class _Newspaper_homeState extends State<Newspaper_home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                color: Colors.pink,
                height: 90,
              ),
              SizedBox(height: 40),
             child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 150,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(
                    height: 150,
                    width: 150,
                    margin: EdgeInsets.all(10),
                    child: Center(
                      child: Text(
                        "Card $index",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    color: Colors.green[700],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
