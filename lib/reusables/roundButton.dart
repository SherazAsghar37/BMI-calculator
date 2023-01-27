import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  RoundButton({required this.icon, required this.onpressed});
  final IconData icon;
  final Function onpressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () => onpressed(),
      // onpressed.call(),
      elevation: 6.0,
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(height: 40, width: 40),
      fillColor: Color(0xFFC69749),
      child: Icon(
        icon,
        color: Colors.black,
      ),
    );
  }
}
