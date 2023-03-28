// ignore_for_file: depend_on_referenced_packages

import 'package:atridev/application/color_list.dart';
import 'package:atridev/presentation/widgets/icon/IconCircle.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateInputApp extends StatelessWidget {
  final DateTime? firstDate;
  final DateTime? lastDate;
  final bool isBorder;
  final IconData? iconData;
  final String? hint;
  final String? label;
  final int modelLabel;
  final DateTime? value;
  final TextEditingController controller;
  const DateInputApp({
    super.key,
    this.firstDate,
    this.lastDate,
    this.isBorder = false,
    this.iconData,
    this.hint,
    this.label,
    this.modelLabel = 1,
    this.value,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        modelLabel == 2
            ? Text(
                label ?? "",
                style: const TextStyle(color: Colors.teal),
              )
            : const SizedBox(),
        modelLabel == 2 ? const SizedBox(height: 5) : const SizedBox(),
        DateTimeField(
          cursorColor: Colors.teal,
          format: DateFormat("dd-MM-yyyy"),
          initialValue: value,
          resetIcon: null,
          onShowPicker: ((context, currentValue) async {
            final date = await showDatePicker(
                context: context,
                initialDate: currentValue ?? DateTime.now(),
                firstDate: firstDate ?? DateTime(1990),
                lastDate: lastDate ?? DateTime(2100),
                builder: (context, child) {
                  return Theme(
                    data: Theme.of(context).copyWith(
                      colorScheme: const ColorScheme(
                        brightness: Brightness.light,
                        primary: Colors.teal,
                        onPrimary: Colors.white,
                        secondary: Colors.green,
                        onSecondary: Colors.white,
                        error: Colors.red,
                        onError: Colors.red,
                        background: Colors.teal,
                        onBackground: Colors.blue,
                        surface: Colors.purple,
                        onSurface: Colors.black,
                      ),
                    ),
                    child: child!,
                  );
                });
            return date;
          }),
          controller: controller,
          decoration: InputDecoration(
            focusColor: Colors.teal,
            fillColor: AppThemeColor.primary,
            filled: true,
            hintText: hint,
            hoverColor: Colors.teal[50],
            floatingLabelStyle: const TextStyle(color: Colors.amber),
            prefixIcon: iconData != null
                ? Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: IconCircle(
                      iconData: iconData!,
                      color: Colors.teal,
                      iconColor: Colors.white,
                    ),
                  )
                : null,
            labelText: label != null && modelLabel == 1 ? label : null,
            border: isBorder
                ? OutlineInputBorder(borderRadius: BorderRadius.circular(20))
                : null,
            focusedBorder: isBorder
                ? OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.teal),
                  )
                : null,
          ),
          validator: (value) {
            switch (value) {
              case null:
                return "Data tidak boleh kosong";
              default:
                return null;
            }
          },
        ),
      ],
    );
  }
}
