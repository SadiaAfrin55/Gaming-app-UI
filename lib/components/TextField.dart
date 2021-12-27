import 'package:flutter/material.dart';

class TextFieldComponent extends StatelessWidget {
  final String title;
  final Icon icon;
  TextFieldComponent({
    key,
    this.title,
    this.icon,
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
          decoration: InputDecoration(
            hintText: "$title",
            border: InputBorder.none,
            hintStyle: TextStyle(
              fontSize: 16,
            ),
            icon: icon,
          ),
        ),
      ),
    );
  }
}
