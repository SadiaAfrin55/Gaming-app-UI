import 'package:flutter/material.dart';

class Newspaper_home extends StatefulWidget {
  _Newspaper_homeState createState() => _Newspaper_homeState();
}

class _Newspaper_homeState extends State<Newspaper_home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: Colors.pink,
              height: 90,
            ),
            SizedBox(height: 40),
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage("assets/person.png"),
                        ),
                        Text("person"),
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage("assets/person.png"),
                        ),
                        Text("person"),
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage("assets/person.png"),
                        ),
                        Text("person"),
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage("assets/person.png"),
                        ),
                        Text("person"),
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage("assets/person.png"),
                        ),
                        Text("person"),
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage("assets/person.png"),
                        ),
                        Text("person"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
