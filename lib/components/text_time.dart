import 'package:flutter/material.dart';

class TextTime extends StatefulWidget {
  final String label;
  final int timeInMinutes;

  const TextTime({
    Key? key,
    required this.label,
    required this.timeInMinutes,
  }) : super(key: key);

  @override
  State<TextTime> createState() => _TextTimeState();
}

class _TextTimeState extends State<TextTime> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          widget.label,
          style: const TextStyle(color: Colors.white),
        ),
        // const SizedBox(height: 6),
        Text(
          '${widget.timeInMinutes}',
          style: const TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
