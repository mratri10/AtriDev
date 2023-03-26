import 'package:atridev/presentation/widgets/LayoutApp.dart';
import 'package:atridev/presentation/widgets/TextInputApp.dart';
import 'package:flutter/material.dart';

class AdminForm extends StatelessWidget {
  const AdminForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutApp(
        primary: Column(
          children: [
            TextInputApp(
              variable: "Nama Anda adalah",
              isPassword: true,
            ),
            TextInputApp(
              variable: "Nama Anda adalah",
              iconData: Icons.home,
            ),
            TextInputApp(
              variable: "Nama Anda adalah",
              iconData: Icons.home,
              isBorder: true,
            ),
            TextInputApp(
              variable: "Nama Anda adalah",
              iconData: Icons.home,
              isBorder: true,
              label: "Name",
            ),
            TextInputApp(
              variable: "Masukan Password Anda",
              iconData: Icons.key,
              isBorder: true,
              label: "Password",
              isPassword: true,
            ),
          ],
        ),
      ),
    );
  }
}
