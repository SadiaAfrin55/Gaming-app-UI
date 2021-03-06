import 'package:flutter/material.dart';

import 'components/Button.dart';
import 'screens/AddUser.dart';
import 'screens/Login.dart';
import 'screens/Signup.dart';
import 'screens/UserList.dart';
import 'screens/Welcome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Hello World',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/UserList',
      routes: {
        '/Welcome': (context) => WelcomePage(),
        '/Button': (context) => ButtonComponent(),
        '/Login': (context) => Login(),
        '/Signup': (context) => Signup(),
        '/AddUser': (context) => AddUser(),
        '/UserList': (context) => UserList(),
      },
    );
  }
}
