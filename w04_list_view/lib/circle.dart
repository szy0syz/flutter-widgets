import 'package:flutter/material.dart';

class MyCircle extends StatelessWidget {
  const MyCircle({Key? key, required this.child}) : super(key: key);

  final String child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        width: 100,
        decoration:
            const BoxDecoration(shape: BoxShape.circle, color: Colors.pink),
        child: Center(
          child: Text(
            child,
            style: const TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
