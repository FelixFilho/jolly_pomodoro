import 'package:bloc/bloc.dart';
import 'package:jolly_pomodoro/components/watch/cubit/watch_states.dart';

class WatchCubit extends Cubit<WatchState> {
  WatchCubit() : super(InitialWatchState());

  startWatch() {
    emit(LoadedWatchState());
  }

  stopWatch() {
    emit(LoadedWatchState());
  }
}
