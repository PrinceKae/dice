import 'package:flutter/material.dart';
import 'package:floppy/gradient_container.dart';

void main() {
  runApp(const MaterialApp(
      home: Scaffold(
    body: GradientContainer(
      Color.fromARGB(255, 102, 35, 141),
      Color.fromARGB(255, 186, 37, 220),
    ),
  ),),);
}
