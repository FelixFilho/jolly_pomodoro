import 'package:flutter/material.dart';

class ControlButtons extends StatelessWidget {
  final String title;
  final VoidCallback onPressedCallback;

  const ControlButtons({
    Key? key,
    required this.title,
    required this.onPressedCallback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: const ButtonStyle(
        backgroundColor: MaterialStatePropertyAll<Color>(Color(0xFF344966)),
        // side: MaterialStatePropertyAll(BorderSide.none),
      ),
      onPressed: onPressedCallback,
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
