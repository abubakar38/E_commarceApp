import 'package:flutter/material.dart';

class pageRaout {
  static gotoNextPage({BuildContext context, Widget navigeteto}) {
    return Navigator.push(
        context, MaterialPageRoute(builder: (context) => navigeteto));
  }
}
