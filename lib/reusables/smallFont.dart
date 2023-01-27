import 'package:flutter/material.dart';

class smallFont extends StatelessWidget {
  final String text;
  smallFont(@required this.text);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: Colors.grey, fontSize: 20),
    );
  }
}
