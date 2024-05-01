import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  const CustomField({super.key, required this.hintText, required this.controller, this.isShowIcon = false});
  final String hintText;
  final TextEditingController controller;
  final bool? isShowIcon;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return TextFormField(
      style: textTheme.bodySmall,
      controller: controller,
      obscureText: isShowIcon ?? false,
      obscuringCharacter: "*",
      decoration: InputDecoration(
        focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        enabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
        hintText: hintText,
        hintStyle: textTheme.bodySmall?.copyWith(color: Colors.grey),
        suffixIcon: (isShowIcon ?? false) ? const Icon(Icons.visibility) : const SizedBox.shrink(),
      ),
    );
  }
}
