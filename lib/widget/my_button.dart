import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class My_button extends StatelessWidget {
  final String text;
  final Color color;
  final Function onpress;
  My_button({this.text, this.color, this.onpress});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: MaterialButton(
        color: color,
        height: 45,
        elevation: 0,
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide.none),
        onPressed: onpress,
        child: Text(
          text,
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}
