import 'package:flutter/material.dart';
import 'package:pubg/components/Button.dart';

class WelcomePage extends StatefulWidget {
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Image.asset(
              "assets/Rectangle 3.png",
              fit: BoxFit.cover,
              height: height,
              width: width,
            ),
            Opacity(
              opacity: 0.6,
              child: Image.asset(
                "assets/harry.jpg",
                fit: BoxFit.cover,
                height: height,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 65),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Test Me",
                      style: TextStyle(
                        fontSize: 53,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: width * 0.6,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.black,
                      ),
                      child: Text(
                        "USER AUTHENTICATION",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 19,
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    ButtonComponent(
                      bgcolor: Colors.black,
                      textcolor: Colors.white,
                      title: "Login",
                      onPressed: () {
                        Navigator.pushNamed(context, '/Login');
                      },
                    ),
                    SizedBox(height: 10),
                    ButtonComponent(
                      bgcolor: Colors.white,
                      textcolor: Colors.black,
                      title: "Sign up",
                      onPressed: () {
                        Navigator.pushNamed(context, '/Signup');
                      },
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
