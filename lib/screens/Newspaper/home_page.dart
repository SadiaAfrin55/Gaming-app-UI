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
              Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 200,
                      child: ListView.builder(
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => Container(
                          width: 100,
                          height: 100,
                          margin: EdgeInsets.all(7),
                          child: Center(
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 40,
                                  backgroundImage: AssetImage("assets/person.png"),
                                ),
                                Text("Card $index"),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
