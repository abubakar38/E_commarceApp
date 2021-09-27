import 'package:flutter/material.dart';

class buikdTextfromfiled extends StatelessWidget {
  final String texthint;
  bool obserbtext = false;
  buikdTextfromfiled({this.texthint, this.obserbtext});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: TextFormField(
          obscureText: obserbtext,
          decoration: InputDecoration(
              fillColor: Colors.grey[300],
              filled: true,
              hintText: texthint,
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10.0))),
        ));
  }
}
