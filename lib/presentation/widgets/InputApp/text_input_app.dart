import 'package:atridev/application/color_list.dart';
import 'package:atridev/presentation/widgets/icon/IconCircle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextInputApp extends StatefulWidget {
  final String? hint;
  final bool isPassword;
  final IconData? iconData;
  final bool isBorder;
  final String? label;
  final int modelLabel;
  final TextEditingController controller;
  final String? value;
  final TextInputType? keyboardType;
  final bool isNumberOnly;

  const TextInputApp({
    super.key,
    this.hint,
    this.isPassword = false,
    this.iconData,
    this.isBorder = false,
    this.label,
    this.modelLabel = 1,
    required this.controller,
    this.value,
    this.keyboardType,
    this.isNumberOnly = false,
  });

  @override
  State<TextInputApp> createState() => _TextInputAppState();
}

class _TextInputAppState extends State<TextInputApp> {
  bool _obscureText = true;
  final TextInputFormatter _numberFormatter =
      FilteringTextInputFormatter.allow(RegExp(r'[0-9]'));
  final List<TextInputFormatter> _listInput = [];

  @override
  Widget build(BuildContext context) {
    if (widget.isNumberOnly) {
      _listInput.add(_numberFormatter);
    }
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
          controller: widget.controller,
          initialValue: widget.value,
          keyboardType: widget.keyboardType,
          inputFormatters: _listInput,
          decoration: InputDecoration(
            focusColor: Colors.teal,
            fillColor: AppThemeColor.primary,
            filled: true,
            hintText: widget.hint,
            hoverColor: Colors.teal[50],
            suffixIcon: widget.isPassword ? passwordEye() : null,
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
          obscureText: _obscureText && widget.isPassword,
          validator: (value) {
            switch (value) {
              case null:
              case "":
                return "Data tidak boleh kosong";
              default:
                return null;
            }
          },
        ),
      ],
    );
  }

  Widget passwordEye() {
    return (TextButton(
      child: Icon(_obscureText ? Icons.visibility_off : Icons.visibility),
      onPressed: () {
        setState(() {
          _obscureText = !_obscureText;
        });
      },
    ));
  }
}









// InputDecoration(
//               fillColor: Colors.teal[100],
//               filled: true,
//               hintText: widget.variable,
//               suffixIcon: widget.isPassword ? PasswordEye() : null,
//               icon: Icon(Icons.home),
//               prefixText: "Name: ",
//               prefixIcon: Icon(
//                 Icons.home,
//                 color: Colors.amberAccent,
//               ),
//               labelText: "Name",
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(20),
//               ),
//             ),
//             obscureText: _obscureText && widget.isPassword,
//             validator: (value) {
//               switch (value) {
//                 case null:
//                 case "":
//                   return "Data tidak boleh kosong";
//                 default:
//                   return "";
//               }
//             },
//           ),