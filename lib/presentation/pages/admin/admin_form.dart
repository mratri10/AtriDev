import 'package:atridev/application/color_list.dart';
import 'package:atridev/data/models/dialog_Item.dart';
import 'package:atridev/data/models/radioItem.dart';
import 'package:atridev/presentation/widgets/InputApp/bottom_list_select.dart';
import 'package:atridev/presentation/widgets/InputApp/date_input_app.dart';
import 'package:atridev/presentation/widgets/InputApp/radio_app.dart';
import 'package:atridev/presentation/widgets/layout_app.dart';
import 'package:atridev/presentation/widgets/TextApp.dart';
import 'package:atridev/presentation/widgets/InputApp/text_input_app.dart';
import 'package:flutter/material.dart';

class AdminForm extends StatefulWidget {
  const AdminForm({super.key});

  @override
  State<AdminForm> createState() => _AdminFormState();
}

class _AdminFormState extends State<AdminForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _genderController = TextEditingController();
  final TextEditingController _regionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutApp(
        color: AppThemeColor.primary,
        primary: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  const TextApp(
                    "Data Pribadi",
                    type: TypeText.title,
                  ),
                  TextInputApp(
                    controller: _nameController,
                    hint: "Masukan Nama Anda",
                    iconData: Icons.home,
                    isBorder: true,
                    label: "Nama",
                    modelLabel: 2,
                  ),
                  const SizedBox(height: 16.0),
                  TextInputApp(
                    controller: _emailController,
                    hint: "Masukan Email Anda",
                    iconData: Icons.mail,
                    isBorder: true,
                    label: "Email",
                    modelLabel: 2,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 16.0),
                  TextInputApp(
                    controller: _phoneController,
                    modelLabel: 2,
                    hint: "Masukan Nomor Telepon Anda",
                    iconData: Icons.phone_android,
                    isBorder: true,
                    label: "Telepon",
                    isNumberOnly: true,
                    keyboardType: TextInputType.phone,
                  ),
                  const SizedBox(height: 16.0),
                  DateInputApp(
                    controller: _dateController,
                    modelLabel: 2,
                    hint: "Masukan Tanggal Lahir Anda",
                    iconData: Icons.date_range_outlined,
                    isBorder: true,
                    label: "Tanggal Lahir",
                  ),
                  const SizedBox(height: 16.0),
                  RadioApp(
                    label: "Jenis Kelamin",
                    controller: _genderController,
                    listRadio: [
                      RadioItem(title: "Pria", index: 1),
                      RadioItem(title: "Wanita", index: 2)
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  BottomListSelect(
                    controller: _regionController,
                    hint: "Masukan Agama Anda",
                    iconData: Icons.book,
                    isBorder: true,
                    label: "Agama",
                    modelLabel: 2,
                    listSelect: [
                      DialogItem(title: "Islam", index: 1),
                      DialogItem(title: "Kristen", index: 2),
                      DialogItem(title: "Budha", index: 3),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {}
                    },
                    child: const Text('Submit'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
