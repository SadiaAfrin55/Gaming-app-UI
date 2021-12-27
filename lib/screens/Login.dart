import 'package:flutter/material.dart';
import 'package:pubg/components/TextField.dart';
import 'package:pubg/components/PassTextField.dart';
import 'package:pubg/components/Button.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            //First Section
            Container(
              margin: EdgeInsets.symmetric(vertical: 25),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/Welcome');
                },
                child: Row(
                  children: [
                    Icon(Icons.arrow_back_ios, color: Colors.lightBlue, size: 14),
                    Text(
                      "Back",
                      style: TextStyle(
                        color: Colors.lightBlue,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            //Second Section
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    "Enter your email address and password to access your account",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 60),
            //Third Section
            Container(
              child: Column(
                children: [
                  TextFieldComponent(
                    title: "Email",
                  ),
                  SizedBox(height: 10),
                  PassTextFieldComponent(),
                  SizedBox(height: 45),
                  ButtonComponent(
                    bgcolor: Colors.black,
                    textcolor: Colors.white,
                    title: "Login",
                    onPressed: () {
                      Navigator.pushNamed(context, '/Login');
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 130),
            //Four Section
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?"),
                  SizedBox(width: 3),
                  FlatButton(
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                        color: Colors.lightBlueAccent,
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/Signup');
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
