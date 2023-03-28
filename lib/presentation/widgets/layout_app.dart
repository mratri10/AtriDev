import 'package:flutter/material.dart';

class LayoutApp extends StatelessWidget {
  final Widget primary;
  final Widget? left;
  final Widget? right;
  final bool isLeft;
  final bool isRight;
  final Color? color;
  const LayoutApp({
    super.key,
    required this.primary,
    this.left,
    this.right,
    this.isLeft = false,
    this.isRight = false,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        screenSize.width > 1000 && isLeft
            ? Expanded(child: left!)
            : const Expanded(child: SizedBox()),
        Container(
          color: color,
          width: screenSize.width < 450 ? screenSize.width : 450,
          child: primary,
        ),
        screenSize.width > 1000 && isRight
            ? Expanded(child: right!)
            : const Expanded(child: SizedBox())
      ],
    );
    ;
  }
}
