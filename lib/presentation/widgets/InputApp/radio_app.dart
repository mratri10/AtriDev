import 'package:atridev/data/models/radio_Item.dart';
import 'package:atridev/presentation/widgets/TextApp.dart';
import 'package:flutter/material.dart';

class RadioApp extends StatefulWidget {
  final List<RadioItem> listRadio;
  final TextEditingController controller;
  final String? label;
  const RadioApp(
      {super.key,
      required this.listRadio,
      required this.controller,
      this.label});

  @override
  State<RadioApp> createState() => _RadioAppState();
}

class _RadioAppState extends State<RadioApp> {
  late RadioItem itemRadio = widget.listRadio[0];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextApp(
            widget.label ?? "",
            // type: TypeText.content,
            color: Colors.teal,
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: widget.listRadio
                .map(
                  (item) => Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: itemRadio == item ? Colors.teal : Colors.white,
                          borderRadius: item.index == 1
                              ? const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10))
                              : item.index == widget.listRadio.length
                                  ? const BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      bottomRight: Radius.circular(10))
                                  : null),
                      child: TextButton(
                        onPressed: () => {
                          setState(
                            () => itemRadio = item,
                          )
                        },
                        child: Text(
                          item.title,
                          style: TextStyle(
                              color: item == itemRadio
                                  ? Colors.white
                                  : Colors.teal),
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
