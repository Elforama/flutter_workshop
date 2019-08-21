import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ios_flutter_workshop/CardImage.dart';
import 'package:ios_flutter_workshop/Carousel.dart';
import 'package:ios_flutter_workshop/CarouselItem.dart';
import 'package:ios_flutter_workshop/Footer.dart';
import 'package:ios_flutter_workshop/Header.dart';

class MyApp extends StatelessWidget {
  static const String imageUrl =
      "https://i.iheart.com/v3/re/assets/images/1469.png?ops=fit(280%2C280)";

  List<String> data = List.generate(100, (i) {
    return i.toString();
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Icon(Icons.favorite, color: Colors.red[600]),
            leading: Icon(
              Icons.settings,
              color: Colors.grey[700],
            ),
            actions: <Widget>[
              IconButton(
                  icon: Icon(
                Icons.search,
                color: Colors.grey[700],
              ))
            ],
          ),
          body: Container(
            color: Colors.grey[100],
            child: Center(
              child: ListView(
                children: buildWidgets(),
              ),
            ),
          )),
    );
  }

  List<Widget> buildWidgets() {
    var widgets = <Widget>[
      SizedBox(height: 12),
      Header(text: "Local Radio Stations"),
      buildCarousel(2, ImageStyle.rounded),
      Footer("Browse By Location"),
      Header(text: "Featured Radio Stations"),
      buildCarousel(3.4, ImageStyle.circle),
      Header(text: "Genres"),
    ];
    for (var i = 0; i < 10; i++) {
      widgets.add(SizedBox(
        height: 104,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AspectRatio(
              aspectRatio: 16.0 / 9.0,
              child: CardImage(imageUrl, ImageStyle.rounded),
            ),
            AspectRatio(
              aspectRatio: 16.0 / 9.0,
              child: CardImage(imageUrl, ImageStyle.rounded),
            ),
          ],
        ),
      ));
    }
    return widgets;
  }

  Widget buildCarousel(double cellCount, ImageStyle imageStyle) {
    return SizedBox(
      height: cellCount == 2 ? 250 : 180,
      child: Carousel(
        cellCount: cellCount,
        itemCount: data.length,
        itemBuilder: (context, i) {
          return CarouselItem(
            imageUrl: imageUrl,
            title: "Z100",
            subtitle: "Live Radio",
            imageStyle: imageStyle,
          );
        },
      ),
    );
  }
}
