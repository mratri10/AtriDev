import 'package:atridev/application/color_list.dart';
import 'package:atridev/presentation/widgets/ImageApp.dart';
import 'package:flutter/material.dart';

class HeaderComponent extends StatelessWidget {
  const HeaderComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                height: 50,
                color: Colors.teal,
                child: const Center(
                  child: Text(
                    "Atri Ariska Alfa",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.only(left: 50),
                padding: const EdgeInsets.all(10),
                child: const Text(
                  "Lorem ipsum dolor sit amet. Sed galisum voluptatem At illo fugit et quod nihil est fuga delectus id libero fugit aut consequatur minus ut ipsa quia",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.teal,
                  ),
                ),
              ),
            ],
          ),
        ),
        const ImageApp(
          imageAsset: 'images/atri.jpeg',
          circular: true,
          border: 6,
          colorBorder: AppThemeColor.primary,
          width: 100,
          height: 100,
        )
      ],
    );
  }
}
