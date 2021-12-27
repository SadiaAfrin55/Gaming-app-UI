import 'package:flutter/material.dart';

class ButtonComponent extends StatelessWidget {
  final Color bgcolor;
  final Color textcolor;
  final String title;
  final Function onPressed;
  ButtonComponent({key, this.bgcolor, this.textcolor, this.title, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Container(
      width: width * 0.9,
      height: height * 0.07,
      child: FlatButton(
        child: Text(
          "$title",
          style: TextStyle(fontSize: 17.0),
        ),
        color: bgcolor,
        textColor: textcolor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        onPressed: onPressed,
      ),
    );
  }
}
