import 'package:atridev/application/color_list.dart';
import 'package:atridev/presentation/pages/admin/admin_page.dart';
import 'package:atridev/presentation/pages/home/homeScreen.dart';
import 'package:atridev/presentation/widgets/layout_app.dart';
import 'package:atridev/presentation/widgets/TextApp.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutApp(
      primary: Scaffold(
        body: Container(
          child: Column(
            children: [
              TextApp(
                "Title Main",
                type: TypeText.titleMain,
              ),
              TextApp(
                "Title",
                type: TypeText.title,
              ),
              TextApp(
                "Content",
                type: TypeText.content,
              ),
              TextApp("Default")
            ],
          ),
        ),
      ), //HomeScreen(),
      isRight: true,
      right: AdminPage(),
    );
  }
}
