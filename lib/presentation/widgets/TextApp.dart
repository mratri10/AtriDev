import 'package:flutter/cupertino.dart';

enum TypeText { titleMain, title, input, content, placeholder }

class TextApp extends StatelessWidget {
  final String text;
  final TypeText? type;
  final Color? color;
  const TextApp(this.text, {super.key, this.type, this.color});

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case TypeText.titleMain:
        return Text(
          text,
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: color),
        );
      case TypeText.title:
        return Text(
          text,
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: color),
        );
      case TypeText.input:
        return Text(
          text,
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w300, color: color),
        );
      case TypeText.placeholder:
        return Text(
          text,
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w500, color: color),
        );
      case TypeText.content:
        return Text(
          text,
          style: TextStyle(
              fontSize: 12, fontWeight: FontWeight.w500, color: color),
        );

      default:
        return Text(
          text,
          style: TextStyle(color: color),
        );
    }
  }
}
