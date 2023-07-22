import 'package:flutter/material.dart';

class Components{
  static CustomSnackBar(String msg, BuildContext context){
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }
}