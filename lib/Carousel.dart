


import 'package:flutter/cupertino.dart';

const PageScrollPhysics snappingPhysics = PageScrollPhysics();


class Carousel extends StatelessWidget {


  int itemCount;
  double cellCount;
  IndexedWidgetBuilder itemBuilder;

  Carousel({this.cellCount, this.itemBuilder, this.itemCount}) {

  }


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: snappingPhysics,
      scrollDirection: Axis.horizontal,
      itemCount: itemCount,
      itemBuilder: (context, index) {
        return SizedBox(
          child: itemBuilder(context, index),
          width: MediaQuery.of(context).size.width / cellCount,
        );
      }
    );
  }

}