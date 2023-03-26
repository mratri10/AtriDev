import 'package:flutter/material.dart';

class RowIconText extends StatelessWidget {
  final String value;
  final IconData icon;
  final Color? color;
  const RowIconText(
      {super.key, required this.icon, required this.value, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Icon(
            icon,
            color: color,
          ),
          SizedBox(width: 5),
          Text(
            value,
            style: TextStyle(color: Colors.black87, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
