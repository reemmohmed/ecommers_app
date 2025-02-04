import 'package:flutter/material.dart';

class CustomTextForm extends StatelessWidget {
  final String textlabel;
  final String hintText;
  final IconData icon;
  final String? Function(String?) validator;
  final TextEditingController controller;
  const CustomTextForm({
    super.key,
    required this.textlabel,
    required this.hintText,
    required this.icon,
    required this.controller,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextFormField(
        validator: validator,
        controller: controller,
        scrollPadding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        decoration: InputDecoration(
            suffixIcon: Icon(icon),
            labelStyle: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.w500),
            label: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(textlabel),
            ),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            hintText: hintText,
            hintStyle: const TextStyle(fontSize: 13, color: Colors.black45),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(35))),
      ),
    );
  }
}
