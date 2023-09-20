import 'package:flutter/material.dart';

class TextTime extends StatelessWidget {
  int timeInMinutes = 0;

  TextTime({
    Key? key,
    required this.timeInMinutes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '-  $timeInMinutes  +',
      style: const TextStyle(
        fontSize: 24,
        color: Colors.white,
      ),
    );
  }
}
