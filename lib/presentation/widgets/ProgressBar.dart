import 'package:atridev/presentation/widgets/image_app.dart';
import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  final String imageAsset;
  final String variable;
  final int right;
  final int left;
  const ProgressBar(
      {super.key,
      required this.imageAsset,
      required this.variable,
      this.left = 1,
      this.right = 1});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          ImageApp(
            imageAsset: imageAsset,
            circular: true,
            width: 40,
            height: 40,
          ),
          Expanded(
            child: Column(
              children: [
                Text(
                  variable,
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Container(
                        height: 10,
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                        ),
                      ),
                      flex: left,
                    ),
                    Expanded(
                      child: Container(
                        height: 10,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                          color: Colors.grey,
                        ),
                      ),
                      flex: right,
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
