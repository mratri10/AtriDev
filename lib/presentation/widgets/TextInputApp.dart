import 'package:atridev/application/color_list.dart';
import 'package:atridev/presentation/widgets/icon/IconCircle.dart';
import 'package:flutter/material.dart';

class TextInputApp extends StatefulWidget {
  final String variable;
  final bool isPassword;
  final IconData? iconData;
  final bool isBorder;
  final String? label;

  const TextInputApp({
    super.key,
    required this.variable,
    this.isPassword = false,
    this.iconData,
    this.isBorder = false,
    this.label,
  });

  @override
  State<TextInputApp> createState() => _TextInputAppState();
}

class _TextInputAppState extends State<TextInputApp> {
  TextEditingController _controller = TextEditingController();
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: TextFormField(
            controller: _controller,
            decoration: InputDecoration(
              fillColor: AppThemeColor.primary,
              filled: true,
              hintText: widget.variable,
              suffixIcon: widget.isPassword ? PasswordEye() : null,
              prefixIcon: widget.iconData != null
                  ? Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: IconCircle(
                        iconData: widget.iconData!,
                        color: Colors.teal,
                        iconColor: Colors.white,
                      ),
                    )
                  : null,
              labelText: widget.label != null ? "Name" : null,
              border: widget.isBorder
                  ? OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
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
                  return "";
              }
            },
          ),
        ),
      ],
    );
  }

  Widget PasswordEye() {
    return (Container(
      child: TextButton(
        child: Icon(_obscureText ? Icons.visibility_off : Icons.visibility),
        onPressed: () {
          setState(() {
            _obscureText = !_obscureText;
          });
        },
      ),
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