import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyButtons extends StatelessWidget {
  final String text;
  Function()? onPressed;

  MyButtons({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(90, 40),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}
