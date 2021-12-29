import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class TestApi extends StatefulWidget {
  _TestApiState createState() => _TestApiState();
}

class _TestApiState extends State<TestApi> {
  List postData = [];
  Future getPost() async {
    final response = await http.get(Uri.parse("http://api.alquran.cloud/v1/surah"));
    if (response.statusCode == 200) {
      setState(() {
        var decode = jsonDecode(response.body);
        postData = decode[""];
        print(postData);
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
        title: Text('Test Api'),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: postData.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(postData[index]["englishName"]),
              subtitle: Text(postData[index]["numberOfAyahs"]),
            );
          },
        ),
      ),
    );
  }
}
