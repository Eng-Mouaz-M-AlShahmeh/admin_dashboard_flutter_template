/* Developed by Eng Mouaz M AlShahmeh */
import 'package:admin_dashboard_template/core/constants/color_constants.dart';
import 'package:admin_dashboard_template/screens/forms/components/add_new_widget.dart';
import 'package:flutter/material.dart';

class FormMaterial extends StatefulWidget {
  const FormMaterial({super.key});

  @override
  FormMaterialState createState() => FormMaterialState();
}

class FormMaterialState extends State<FormMaterial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(foregroundColor: Colors.black45,),
      body: SingleChildScrollView(
        child: Card(
          color: bgColor,
          elevation: 5,
          margin: const EdgeInsets.fromLTRB(32, 32, 64, 32),
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 16.0),
                child: Column(
                  children: const [
                    Center(
                      child: Text("ماذا تريد أن تضيف؟ اختر من أسفل!"),
                    ),
                    SelectionSection(),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
