// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jolly_pomodoro/components/settings/cubit/settings_cubit.dart';
import 'package:jolly_pomodoro/components/settings/cubit/settings_state.dart';
import 'package:jolly_pomodoro/components/text_time.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  final TextEditingController controller1 = TextEditingController();
  final TextEditingController controller2 = TextEditingController();
  late final SettingsCubit _cubit;

  @override
  void initState() {
    super.initState();
    _cubit = context.read<SettingsCubit>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, SettingsState>(
        // ACHTUNG PANZER!
        bloc: _cubit,
        builder: (context, state) {
          return BottomAppBar(
            height: 100,
            color: const Color(0xFF344966),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        _cubit.decrementTime();
                      },
                      icon: const Icon(Icons.remove),
                      style: const ButtonStyle(
                          iconColor:
                              MaterialStatePropertyAll<Color>(Colors.white)),
                    ),
                    TextTime(label: 'Time', timeInMinutes: state.time),
                    IconButton(
                      onPressed: () {
                        _cubit.incrementTime();
                      },
                      icon: const Icon(Icons.add),
                      style: const ButtonStyle(
                          iconColor:
                              MaterialStatePropertyAll<Color>(Colors.white)),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        _cubit.decrementInterval();
                      },
                      icon: const Icon(Icons.remove),
                      style: const ButtonStyle(
                          iconColor:
                              MaterialStatePropertyAll<Color>(Colors.white)),
                    ),
                    TextTime(label: 'Interval', timeInMinutes: state.interval),
                    IconButton(
                      onPressed: () {
                        _cubit.incrementeInterval();
                      },
                      icon: const Icon(Icons.add),
                      style: const ButtonStyle(
                          iconColor:
                              MaterialStatePropertyAll<Color>(Colors.white)),
                    ),
                  ],
                ),
              ],
            ),
          );
        });
  }
}
