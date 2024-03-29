import 'package:flutter/material.dart';

class ItemImage extends StatelessWidget {
  final String imgSrc;
  const ItemImage({
    Key key,
    this.imgSrc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Image.network(
    //return Image.asset(
      imgSrc,
      //height: size.height * 0.25,
      height: 200,
      width: double.infinity,
      // it cover the 25% of total height
      fit: BoxFit.cover,
    );
  }
}
