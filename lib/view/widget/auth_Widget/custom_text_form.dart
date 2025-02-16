import 'package:flutter/material.dart';

class CustomTextForm extends StatelessWidget {
  final String textlabel;
  final String hintText;
  final IconData icon;
  final bool isNumber;
  final bool? obscureText;
  final void Function()? onTapIcon;

  final String? Function(String?) validator;
  final TextEditingController controller;
  const CustomTextForm({
    super.key,
    required this.textlabel,
    this.onTapIcon,
    required this.hintText,
    required this.icon,
    required this.controller,
    required this.validator,
    required this.isNumber,
    this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextFormField(
        obscureText: obscureText == null || obscureText == false ? false : true,
        keyboardType: isNumber
            ? const TextInputType.numberWithOptions(decimal: true)
            : TextInputType.text,
        validator: validator,
        controller: controller,
        scrollPadding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        decoration: InputDecoration(
            suffixIcon: InkWell(
                borderRadius: BorderRadius.circular(20),
                onTap: onTapIcon,
                child: Icon(icon)),
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
