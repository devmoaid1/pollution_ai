import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Widget child;

  final VoidCallback onTap;

  const CustomButton({
    super.key,
    required this.child,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onTap, child: child);
  }
}
