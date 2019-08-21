


import 'package:flutter/material.dart';
import 'package:ios_flutter_workshop/CardImage.dart';

class CarouselItem extends StatelessWidget {

  String imageUrl;
  String title;
  String subtitle;
  ImageStyle imageStyle;

  CarouselItem({this.imageUrl, this.title, this.subtitle, this.imageStyle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          CardImage(imageUrl, imageStyle),
          Text(title, style: Theme.of(context).textTheme.title,),
          Text(subtitle, style: Theme.of(context).textTheme.subtitle,)
        ],
      ),
    );
  }

}