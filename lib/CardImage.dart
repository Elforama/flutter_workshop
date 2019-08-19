


import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {

  String imageUrl;

  CardImage(this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6)
        ),
        child: Image.network(imageUrl),
      ),
    );
  }

}