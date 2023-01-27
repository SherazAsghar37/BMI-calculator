import 'package:flutter/material.dart';

class genderColumn extends StatelessWidget {
  final String genderName;
  final Icon genderIcon;
  genderColumn(@required this.genderName, @required this.genderIcon);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        genderIcon,
        SizedBox(
          height: 5,
        ),
        Text(
          genderName,
          style: TextStyle(color: Colors.grey, fontSize: 20),
        )
      ],
    );
  }
}
