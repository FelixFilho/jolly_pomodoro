import 'dart:async';

import 'package:flutter/material.dart';

class Watch extends StatefulWidget {
  const Watch({super.key});

  @override
  State<Watch> createState() => _WatchState();
}

class _WatchState extends State<Watch> {
  Timer? _timer;
  final int _totalSeconds = 20 * 60;
  int _currentSeconds = 0;

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (timer) {
        if (_currentSeconds == _totalSeconds) {
          timer.cancel();
        } else {
          setState(() {
            _currentSeconds++;
          });
        }
      },
    );
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    int remainingMinutes = (_totalSeconds - _currentSeconds) ~/ 60;
    int remainingSeconds = (_totalSeconds - _currentSeconds) % 60;

    return CustomPaint(
      child: CircleAvatar(
        maxRadius: 120,
        backgroundColor: const Color(0xFF344966),
        child: Text(
          '$remainingMinutes:${remainingSeconds.toString().padLeft(2, '0')}',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 48, // 62
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
