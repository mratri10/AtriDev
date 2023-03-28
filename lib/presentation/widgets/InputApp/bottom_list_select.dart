import 'package:atridev/application/color_list.dart';
import 'package:atridev/data/models/dialog_Item.dart';
import 'package:atridev/presentation/widgets/TextApp.dart';
import 'package:atridev/presentation/widgets/dialog/bottom_dialog.dart';
import 'package:atridev/presentation/widgets/icon/IconCircle.dart';
import 'package:flutter/material.dart';

class BottomListSelect extends StatefulWidget {
  final TextEditingController controller;
  final String? label;
  final String? value;
  final String? hint;
  final List<DialogItem> listSelect;
  final IconData? iconData;
  final int modelLabel;
  final bool isBorder;
  const BottomListSelect({
    super.key,
    this.label,
    this.value,
    this.hint,
    this.iconData,
    this.modelLabel = 1,
    this.isBorder = false,
    required this.listSelect,
    required this.controller,
  });

  @override
  State<BottomListSelect> createState() => _BottomListSelectState();
}

class _BottomListSelectState extends State<BottomListSelect> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.modelLabel == 2
            ? Text(
                widget.label ?? "",
                style: const TextStyle(color: Colors.teal),
              )
            : const SizedBox(),
        widget.modelLabel == 2 ? const SizedBox(height: 5) : const SizedBox(),
        TextFormField(
          readOnly: true,
          controller: widget.controller,
          initialValue: widget.value,
          decoration: InputDecoration(
            focusColor: Colors.teal,
            fillColor: AppThemeColor.primary,
            filled: true,
            hintText: widget.hint,
            hoverColor: Colors.teal[50],
            suffixIcon: const Icon(Icons.arrow_drop_down),
            prefixIcon: widget.iconData != null
                ? Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: IconCircle(
                      iconData: widget.iconData!,
                      color: Colors.teal,
                      iconColor: Colors.white,
                    ),
                  )
                : null,
            labelText: widget.label != null && widget.modelLabel == 1
                ? widget.label
                : null,
            border: widget.isBorder
                ? OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )
                : null,
            focusedBorder: widget.isBorder
                ? OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.teal),
                  )
                : null,
          ),
          validator: (value) {
            switch (value) {
              case null:
              case "":
                return "Data tidak boleh kosong";
              default:
                return null;
            }
          },
          onTap: () {
            showBottomDialog(context,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextApp(
                            widget.label ?? "Pilih Data",
                            type: TypeText.title,
                          ),
                          const TextApp(
                            "Cancel",
                            type: TypeText.content,
                            color: Colors.redAccent,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: widget.listSelect
                            .map(
                              (e) => TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                  widget.controller.text = e.title;
                                },
                                child: Container(
                                  width: double.infinity,
                                  padding: const EdgeInsets.all(10),
                                  alignment: Alignment.center,
                                  child: Text(
                                    e.title,
                                    style: const TextStyle(color: Colors.teal),
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                      )
                    ],
                  ),
                ));
          },
        ),
      ],
    );
  }
}
          
        
        // Row(
        //   children: [
        //     IconCircle(
        //       iconData: Icons.mosque,
        //       color: Colors.teal,
        //       iconColor: Colors.white,
        //     ),
        //     SizedBox(width: 10),
        //     agama == ""
        //         ? TextApp(
        //             "Pilih Agama",
        //             type: TypeText.placeholder,
        //             color: Colors.grey[500],
        //           )
        //         : TextApp(
        //             agama,
        //             type: TypeText.input,
        //             color: Colors.grey[800],
        //           ),
        //     Expanded(
        //         child: TextButton(
        //       child: Container(
        //           alignment: Alignment.centerRight,
        //           child: Icon(Icons.arrow_drop_down_outlined)),
        //       onPressed: () {
        //         showBottomDialog(context,
        //             child: Container(
        //               padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        //               child: Column(
        //                 children: [
        //                   Row(
        //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                     children: [
        //                       TextApp(
        //                         widget.label ?? "Pilih Data",
        //                         type: TypeText.title,
        //                       ),
        //                       TextApp(
        //                         "Cancel",
        //                         type: TypeText.content,
        //                         color: Colors.redAccent,
        //                       ),
        //                     ],
        //                   ),
        //                   SizedBox(
        //                     height: 20,
        //                   ),
        //                   Column(
        //                     children: widget.listSelect
        //                         .map(
        //                           (e) => TextButton(
        //                             onPressed: () {
        //                               Navigator.pop(context);
        //                               widget.controller.text = e.title;
        //                               setState(() {
        //                                 agama = e.title;
        //                               });
        //                             },
        //                             child: Container(
        //                               width: double.infinity,
        //                               padding: EdgeInsets.all(10),
        //                               alignment: Alignment.center,
        //                               child: Text(
        //                                 e.title,
        //                                 style: TextStyle(color: Colors.teal),
        //                               ),
        //                             ),
        //                           ),
        //                         )
        //                         .toList(),
        //                   )
        //                 ],
        //               ),
        //             ));
        //       },
        //     ))
        //   ],
        // ),