


import 'package:flutter/material.dart';

enum ImageStyle {
  rounded, 
  circle
}

class CardImage extends StatelessWidget {

  String imageUrl;
  ImageStyle imageStyle;

  CardImage(this.imageUrl, this.imageStyle);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(imageStyle == ImageStyle.rounded ? 6 : 999999)
        ),
        child: Image.network(imageUrl),
      ),
    );
  }

}
