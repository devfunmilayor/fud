import 'package:flutter/material.dart';

class SharedOperations {
  static void showMessage(String message, Color color, BuildContext context) {
    final snackBar = SnackBar(
      content: Text(message),
      duration:  Duration(seconds: 3),
      backgroundColor: color,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
