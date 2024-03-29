import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage(
      {Key? key,
      required this.imageUrl,
      this.height,
      this.width,
      this.color,
      this.boxFit})
      : super(key: key);
  final String imageUrl;
  final double? height;
  final double? width;
  final Color? color;
  final BoxFit? boxFit;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imageUrl,
      height: height,
      width: width,
      color: color,
      fit: boxFit,
    );
  }
}
