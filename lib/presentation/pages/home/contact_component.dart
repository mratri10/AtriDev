import 'package:atridev/presentation/widgets/ProgressBar.dart';
import 'package:atridev/presentation/widgets/icon/RowIconText.dart';
import 'package:flutter/material.dart';

class ContactComponent extends StatelessWidget {
  const ContactComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: const [
          RowIconText(icon: Icons.person, value: "Atri Ariska Alfa"),
          RowIconText(icon: Icons.person, value: "Atri Ariska Alfa"),
          RowIconText(icon: Icons.person, value: "Atri Ariska Alfa"),
          RowIconText(icon: Icons.person, value: "Atri Ariska Alfa"),
          RowIconText(icon: Icons.person, value: "Atri Ariska Alfa"),
          SizedBox(
            height: 20,
          ),
          ProgressBar(
            imageAsset: "images/logo.png",
            variable: "Javascript",
            left: 80,
            right: 20,
          )
        ],
      ),
    );
  }
}
