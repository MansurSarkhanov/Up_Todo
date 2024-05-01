import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Expanded(child: Center(child: Divider())),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2.0),
          child: Text(
            'or',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
        const Expanded(child: Center(child: Divider()))
      ],
    );
  }
}
