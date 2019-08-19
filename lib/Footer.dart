


import 'package:flutter/material.dart';

class Footer extends StatelessWidget {

  String text;

  Footer(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: RaisedButton(
        color: Colors.white,
        child: Text(
          text,
          style: Theme.of(context).textTheme.button.apply(color: Colors.blue[400]),
        ),
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40)
        ),
      ),
    );
  }

}