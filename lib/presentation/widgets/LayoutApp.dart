import 'package:atridev/application/color_list.dart';
import 'package:flutter/material.dart';

class LayoutApp extends StatelessWidget {
  Widget primary;
  Widget? left;
  Widget? right;
  bool isLeft;
  bool isRight;
  LayoutApp({
    super.key,
    required this.primary,
    this.left,
    this.right,
    this.isLeft = false,
    this.isRight = false,
  });

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          screenSize.width > 1000 && isLeft
              ? Expanded(child: left!)
              : Expanded(child: SizedBox()),
          Container(
            color: AppThemeColor.primary,
            width: screenSize.width < 450 ? screenSize.width : 450,
            child: primary,
          ),
          screenSize.width > 1000 && isRight
              ? Expanded(child: right!)
              : Expanded(child: SizedBox())
        ],
      ),
    );
    ;
  }
}
