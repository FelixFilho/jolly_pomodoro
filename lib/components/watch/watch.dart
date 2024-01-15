import 'package:flutter/material.dart';

class Watch extends StatefulWidget {
  const Watch({super.key});

  @override
  State<Watch> createState() => _WatchState();
}

class _WatchState extends State<Watch> {
  @override
  Widget build(BuildContext context) {
    return const CustomPaint(
      child: CircleAvatar(
        maxRadius: 120,
        backgroundColor: Color(0xFF344966),
        child: Text(
          '0:00',
          style: TextStyle(
            color: Colors.white,
            fontSize: 62,
          ),
        ),
      ),
    );
  }
}
