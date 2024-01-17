import 'package:bloc/bloc.dart';

import 'current_task_state.dart';

class CurrentTaskCubit extends Cubit<CurrentTaskState> {
  CurrentTaskCubit() : super(const CurrentTaskState(task: 'Write something'));

  void updateTask(String newTask) => emit(state.copyWith(task: newTask));
}
