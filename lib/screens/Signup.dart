import 'package:flutter/material.dart';
import 'package:pubg/components/TextField.dart';
import 'package:pubg/components/PassTextField.dart';
import 'package:pubg/components/Button.dart';
import 'package:pubg/components/RadioButton.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
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

              //Second Section
              Container(
                child: Column(
                  children: [
                    Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 13),
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/person.png"),
                      radius: 50,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 48.0, right: 40),
                            child: CircleAvatar(
                              backgroundColor: Colors.black,
                              radius: 20,
                              child: Icon(Icons.photo_camera, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              //Third Section
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFieldComponent(
                      title: "Name",
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    TextFieldComponent(
                      title: "Email",
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    PassTextFieldComponent(),
                    SizedBox(
                      height: 13,
                    ),
                    TextFieldComponent(
                      title: "Enter Mobile Number",
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Text(
                      "Gender",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black.withOpacity(0.8),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Radio(
                          value: 1,
                          groupValue: _value,
                          onChanged: (value) {
                            setState(() {
                              _value = value;
                            });
                          },
                        ),
                        Text(
                          "Male",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(width: 7),
                        //2nd btn
                        Radio(
                          value: 2,
                          groupValue: _value,
                          onChanged: (value) {
                            setState(() {
                              _value = value;
                            });
                          },
                        ),
                        Text(
                          "Female",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ButtonComponent(
                      bgcolor: Colors.black,
                      textcolor: Colors.white,
                      title: "Sign up",
                      onPressed: () {
                        Navigator.pushNamed(context, '/Login');
                      },
                    ),
                  ],
                ),
              ),
              //Four Section
              SizedBox(height: 20),
              //Four Section
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?"),
                    SizedBox(width: 3),
                    FlatButton(
                      child: Text(
                        "Login",
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
      ),
    );
  }
}
