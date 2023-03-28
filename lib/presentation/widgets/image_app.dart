import 'package:flutter/material.dart';

class ImageApp extends StatelessWidget {
  final String imageAsset;
  final double? width;
  final double? height;
  final bool circular;
  final double borderRadius;
  final double border;
  final Color colorBorder;
  const ImageApp({
    super.key,
    required this.imageAsset,
    this.height,
    this.width,
    this.circular = false,
    this.borderRadius = 0.0,
    this.border = 0.0,
    this.colorBorder = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        shape: circular ? BoxShape.circle : BoxShape.rectangle,
        border: border == 0.0
            ? null
            : Border.all(width: border, color: colorBorder),
        image: DecorationImage(
          image: AssetImage(imageAsset),
          fit: BoxFit.cover,
        ),
        borderRadius: !circular ? BorderRadius.circular(borderRadius) : null,
      ),
    );
  }
}
