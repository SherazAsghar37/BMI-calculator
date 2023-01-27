import 'package:flutter/material.dart';

class CalculateButton extends StatelessWidget {
  final Color color;
  final String text;
  CalculateButton({required this.color, required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.maxFinite,
      decoration: BoxDecoration(
          color: color,
          //Color(0xFFC69749),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10))),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
