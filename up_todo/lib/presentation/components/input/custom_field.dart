import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  const CustomField(
      {super.key, required this.hintText, required this.controller, this.isShowIcon = false, this.validator});
  final String hintText;
  final TextEditingController controller;
  final bool? isShowIcon;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return TextFormField(
      validator: validator,
      style: textTheme.bodySmall,
      controller: controller,
      obscureText: isShowIcon ?? false,
      obscuringCharacter: "*",
      decoration: InputDecoration(
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        hintText: hintText,
        hintStyle: textTheme.bodySmall?.copyWith(color: Colors.grey),
        suffixIcon: (isShowIcon ?? false) ? const Icon(Icons.visibility) : const SizedBox.shrink(),
      ),
    );
  }
}
