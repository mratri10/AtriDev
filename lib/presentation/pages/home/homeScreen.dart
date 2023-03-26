import 'package:atridev/application/color_list.dart';
import 'package:atridev/presentation/pages/home/contactComponent.dart';
import 'package:atridev/presentation/pages/home/headerComponent.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppThemeColor.primary,
        child: Column(
          children: [
            HeaderComponent(),
            Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        ContactComponent(),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Column(
                    children: [
                      // ContactComponent(),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
