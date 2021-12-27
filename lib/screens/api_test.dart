import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class TestApi extends StatefulWidget {
  _TestApiState createState() => _TestApiState();
}

class _TestApiState extends State<TestApi> {
  List allNewsData = [];
  Future getAllNews() async {
    final response = await http.get(Uri.parse("https://newsapi.org/v2/everything?q=tesla&from=&sortBy=publishedAt&apiKey=4159422918ad47e1bca6d72a504c5da6"));
    Map _allNews = {};
    if (response.statusCode == 200) {
      setState(() {
        _allNews = jsonDecode(response.body);
        allNewsData = _allNews["articles"];
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
