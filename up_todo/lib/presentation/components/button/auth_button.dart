import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:up_todo/core/constants/colors.dart';
import 'package:up_todo/core/constants/strings.dart';
import 'package:up_todo/core/utility/extension/icon_ext.dart';

class AuthButton extends StatefulWidget {
  const AuthButton({super.key, required this.text, this.isGoogle = false, required this.onTap});

  final String text;
  final bool isGoogle;
  final VoidCallback onTap;
  @override
  State<AuthButton> createState() => _AuthButtonState();
}

class _AuthButtonState extends State<AuthButton> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    if (widget.isGoogle) {
      return InkWell(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: Colors.transparent,
            border: Border.all(color: AppColors.primaryColor),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(IconPath.google.toPathSvg()),
                const SizedBox(
                  width: 8,
                ),
                Text(LoginStrings.loginGoogle, style: textTheme.bodySmall),
              ],
            ),
          ),
        ),
      );
    }
    return ElevatedButton(
      onPressed: widget.onTap,
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
