// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class SettingsState extends Equatable {
  const SettingsState({
    required this.time,
    required this.interval,
  });

  final int time;
  final int interval;

  @override
  List<Object?> get props => [
        time,
        interval,
      ];

  SettingsState copyWith({
    int? time,
    int? interval,
  }) {
    return SettingsState(
      time: time ?? this.time,
      interval: interval ?? this.interval,
    );
  }
}
