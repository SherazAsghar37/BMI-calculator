import 'package:flutter/widgets.dart';

class bigFont extends StatelessWidget {
  var bigfont;
  bigFont(this.bigfont);
  @override
  Widget build(BuildContext context) {
    return Text(
      bigfont.toString(),
      style: TextStyle(fontSize: 50, fontWeight: FontWeight.w900),
    );
  }
}
