import 'package:flutter/material.dart';

import 'components/Button.dart';
import 'screens/AddUser.dart';
import 'screens/Login.dart';
import 'screens/Newspaper/home_page.dart';
import 'screens/Signup.dart';
import 'screens/UserList.dart';
import 'screens/Welcome.dart';
import 'screens/api_test.dart';
import 'screens/location_track.dart';

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
      initialRoute: '/newspaper_home',
      routes: {
        '/Welcome': (context) => WelcomePage(),
        '/Button': (context) => ButtonComponent(),
        '/Login': (context) => Login(),
        '/Signup': (context) => Signup(),
        '/AddUser': (context) => AddUser(),
        '/UserList': (context) => UserList(),
        '/TestApi': (context) => TestApi(),
        '/Location': (context) => LocationTracker(),
        '/newspaper_home': (context) => Newspaper_home(),
      },
    );
  }
}
