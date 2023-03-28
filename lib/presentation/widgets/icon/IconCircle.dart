import 'package:atridev/application/color_list.dart';
import 'package:flutter/material.dart';

class IconCircle extends StatelessWidget {
  final IconData iconData;
  final Color color;
  final Color? iconColor;
  const IconCircle({
    super.key,
    required this.iconData,
    this.color = AppThemeColor.primary,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        iconData,
        color: iconColor != null ? iconColor : null,
      ),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
    );
  }
}
