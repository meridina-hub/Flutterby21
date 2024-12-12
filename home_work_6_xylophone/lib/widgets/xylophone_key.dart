import 'package:flutter/material.dart';

class XylophoneKey extends StatelessWidget {
  const XylophoneKey({
    super.key,
    required this.color,
    required this.onPressed,
  });
  final Color color;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onPressed,
        child: Container(
          width: double.infinity,
          height: 91,
          color: color,
        ),
      ),
    );
  }
}
