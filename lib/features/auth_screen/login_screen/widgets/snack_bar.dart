import 'package:flutter/material.dart';

showSnackBar(BuildContext context, String message, Color color) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(message, style: const TextStyle(color: Colors.white)),
    backgroundColor: color,
    duration: Duration(seconds: 3),
    behavior: SnackBarBehavior.floating,
  ));
}
