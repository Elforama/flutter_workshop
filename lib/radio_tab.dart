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
                children: [
                  SizedBox(height: 12),
                  Header(text: "Local Radio Stations"),
                  buildCarousel(2, ImageStyle.rounded),
                  Footer("Browse By Location"),
                  Header(text: "Featured Radio Stations"),
                  buildCarousel(3.4, ImageStyle.circle),
                  Header(text: "Genres"),
                  buildGenreGrid(),
                ],
              ),
            ),
          )),
    );
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

  Widget buildGenreGrid() {
    return GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16.0),
        childAspectRatio: 16.0/9.0,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        physics: ScrollPhysics(),
        shrinkWrap: true,
        children: <Widget>[
          CardImage(imageUrl, ImageStyle.rounded),
          CardImage(imageUrl, ImageStyle.rounded),          
          CardImage(imageUrl, ImageStyle.rounded),          
          CardImage(imageUrl, ImageStyle.rounded),          
          CardImage(imageUrl, ImageStyle.rounded),          
          CardImage(imageUrl, ImageStyle.rounded),                                                  
        ],
    );
  }

}
