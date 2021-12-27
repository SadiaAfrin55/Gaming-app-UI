import 'package:flutter/material.dart';
import 'package:pubg/components/TextField.dart';
import 'package:pubg/components/PassTextField.dart';
import 'package:pubg/components/Button.dart';
import 'package:pubg/components/BottomNavBar.dart';

class AddUser extends StatefulWidget {
  _AddUserState createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Add new User",
        ),
        titleTextStyle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black, size: 18),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        bottom: PreferredSize(
            child: Container(
              color: Colors.black.withOpacity(0.15),
              height: 1.0,
            ),
            preferredSize: Size.fromHeight(4.0)),
        backgroundColor: Colors.black12.withOpacity(0.02),
        toolbarHeight: 65,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
          child: Column(
            children: [
              //First Section

              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
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
                      title: "Phone",
                    ),
                    SizedBox(
                      height: 17,
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
            ],
          ),
        ),
      ),
    );
  }
}
