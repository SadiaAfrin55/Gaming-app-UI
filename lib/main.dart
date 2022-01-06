import 'package:flutter/material.dart';
import 'dart:async';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'components/Button.dart';
import 'screens/AddUser.dart';
import 'screens/Login.dart';
import 'screens/Newspaper/home_page.dart';
import 'screens/Signup.dart';
import 'screens/UserList.dart';
import 'screens/Welcome.dart';
import 'screens/api_test.dart';
//import 'screens/location_track.dart';

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
      initialRoute: '/Location',
      routes: {
        '/Welcome': (context) => WelcomePage(),
        '/Button': (context) => ButtonComponent(),
        '/Login': (context) => Login(),
        '/Signup': (context) => Signup(),
        '/AddUser': (context) => AddUser(),
        '/UserList': (context) => UserList(),
        '/TestApi': (context) => TestApi(),
        '/Location': (context) => MapSample(),
        '/newspaper_home': (context) => Newspaper_home(),
      },
    );
  }
}

//////

class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = CameraPosition(bearing: 192.8334901395799, target: LatLng(37.43296265331129, -122.08832357078792), tilt: 59.440717697143555, zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _goToTheLake,
        label: Text('To the lake!'),
        icon: Icon(Icons.directions_boat),
      ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}
