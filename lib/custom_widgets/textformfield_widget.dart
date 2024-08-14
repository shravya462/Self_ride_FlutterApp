import 'package:flutter/material.dart';
import 'package:flutter_task/custom_widgets/text_widget.dart';

class CustomTextFormField extends StatelessWidget {
  final String title;
  final TextInputType keyType;
  final String hintText;
  final IconData icon;

  CustomTextFormField({
    required this.title,
    required this.keyType,
    required this.hintText,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8, bottom: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextWidget(
            txtTitle: title,
            txtColor: Colors.black,
            txtFontWeight: FontWeight.w600,
            txtFontSize: 16,
            wrapValue: true,
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            keyboardType: keyType,
            decoration: InputDecoration(
              hintText: hintText,
              suffixIcon: Icon(icon),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
