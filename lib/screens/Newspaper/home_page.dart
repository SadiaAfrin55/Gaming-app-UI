import 'dart:convert';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Newspaper_home extends StatefulWidget {
  _Newspaper_homeState createState() => _Newspaper_homeState();
}

class _Newspaper_homeState extends State<Newspaper_home> {
  List postData;
  Future getPost() async {
    String ServiceUrl = "https://jsonplaceholder.typicode.com/photos";
    var response = await http.get(Uri.parse(ServiceUrl));
    if (response.statusCode == 200) {
      setState(() {
        postData = json.decode(response.body);
      });
    }
  }

  @override
  void initState() {
    this.getPost();
    super.initState();
  }

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
                  itemCount: postData.length,
                  itemBuilder: (BuildContext context, int index) => Container(
                    child: Row(
                      children: [
                        //Expanded(flex: 2, child: Image.asset(postData[index]["url"])),
                        SizedBox(width: 10),
                        Expanded(
                          flex: 10,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(postData[index]["title"]),
                            ],
                          ),
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
