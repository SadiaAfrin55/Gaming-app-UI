import 'package:flutter/material.dart';

class PassTextFieldComponent extends StatelessWidget {
  PassTextFieldComponent({
    key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Container(
      width: width * 0.9,
      height: height * 0.07,
      color: Colors.black26.withOpacity(0.06),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          obscureText: true,
          decoration: InputDecoration(
            hintText: "Password",
            border: InputBorder.none,
            hintStyle: TextStyle(
              fontSize: 16,
            ),
            suffixIcon: IconButton(
              icon: Icon(Icons.visibility),
              onPressed: () {},
            ),
          ),
        ),
      ),
    );
  }
}
