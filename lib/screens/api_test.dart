import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class TestApi extends StatefulWidget {
  _TestApiState createState() => _TestApiState();
}

class _TestApiState extends State<TestApi> {
  List allNewsData = [];
  Future getAllNews() async {
    final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/todos"));
    Map _allNews = {};
    if (response.statusCode == 200) {
      setState(() {
        _allNews = jsonDecode(response.body);
        allNewsData = _allNews[""];
      });
    }
  }

  @override
  void initState() {
    getAllNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: allNewsData.length,
          itemBuilder: (BuildContext ctx, int index) {
            return Card(
              elevation: 3,
              child: ListTile(
                title: Text(allNewsData[index]['title']),
              ),
            );
          }),
    );
  }
}
