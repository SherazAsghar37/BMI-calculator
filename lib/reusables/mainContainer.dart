import 'package:flutter/material.dart';

class MainContainer extends StatelessWidget {
  final Column child;
  final Color colour;
  MainContainer(
    @required this.child,
    @required this.colour,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(7),
      decoration:
          BoxDecoration(color: colour, borderRadius: BorderRadius.circular(10)),
      child: child,
    );
  }
}
