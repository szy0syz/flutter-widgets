import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class MySquare extends StatelessWidget {
  const MySquare({Key? key, required this.child}) : super(key: key);

  final String child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        height: 400,
        color: Colors.deepPurple[100],
        child: Center(
          child: Text(
            child,
            style: const TextStyle(fontSize: 40),
          ),
        ),
      ),
    );
  }
}
