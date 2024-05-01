import 'package:flutter/material.dart';

class AuthButton extends StatefulWidget {
  const AuthButton({super.key, required this.text});

  final String text;
  @override
  State<AuthButton> createState() => _AuthButtonState();
}

class _AuthButtonState extends State<AuthButton> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return ElevatedButton(
      onPressed: () {},
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Text(
            widget.text,
            style: textTheme.bodySmall,
          ),
        ),
      ),
    );
  }
}
