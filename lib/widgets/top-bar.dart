import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  final String text;

  TopBar(this.text);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(text),
    );
  }
}
