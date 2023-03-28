import 'package:atridev/presentation/widgets/layout_app.dart';
import 'package:flutter/material.dart';

Future showBottomDialog(BuildContext context, {required Widget child}) {
  return showDialog(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          alignment: Alignment.bottomCenter,
          insetPadding: const EdgeInsets.all(0),
          contentPadding: const EdgeInsets.all(0),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20.0))),
          content: Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
            child: SingleChildScrollView(
              child: LayoutApp(primary: child),
            ),
          ),
        );
      });
}
