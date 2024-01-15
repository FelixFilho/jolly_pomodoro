import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jolly_pomodoro/components/settings/cubit/settings_state.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit()
      : super(const SettingsState(
          time: 0,
          interval: 0,
        ));

  void incrementTime() => emit(state.copyWith(time: state.time + 1));
  void decrementTime() => emit(state.copyWith(time: state.time - 1));
  void incrementeInterval() =>
      emit(state.copyWith(interval: state.interval + 1));
  void decrementInterval() =>
      emit(state.copyWith(interval: state.interval - 1));
}
