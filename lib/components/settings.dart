// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:jolly_pomodoro/components/text_time.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 100,
      color: const Color(0xFF333333),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextTime(timeInMinutes: 10),
          TextTime(timeInMinutes: 50),
        ],
      ),
    );
  }
}
