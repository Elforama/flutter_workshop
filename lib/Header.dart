


import 'package:flutter/material.dart';

class Header extends StatelessWidget {

  String text;

  Header({this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Text(
        text,
        style: Theme.of(context).textTheme.title,
      ),
    );
  }

}