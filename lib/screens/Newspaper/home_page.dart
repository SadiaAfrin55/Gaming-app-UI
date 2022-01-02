import 'package:flutter/material.dart';

class Newspaper_home extends StatefulWidget {
  _Newspaper_homeState createState() => _Newspaper_homeState();
}

class _Newspaper_homeState extends State<Newspaper_home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("newspaper"),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: ListView.builder(
                  itemCount: 15,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => Container(
                    margin: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Image.asset("assets/person.png"),
                        SizedBox(widtg: 30),
                        Column(
                          children: [
                            Text(
                              "Title",
                            ),
                            Text(
                              "Title",
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
