import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jolly_pomodoro/components/current_task/cubit/current_task_cubit.dart';
import 'package:jolly_pomodoro/components/current_task/cubit/current_task_state.dart';

class Task extends StatefulWidget {
  final String currentTask;

  const Task({Key? key, required this.currentTask}) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  late final CurrentTaskCubit _cubit;
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _cubit = context.read<CurrentTaskCubit>();
  }

  @override
  Widget build(BuildContext context) {
    _cubit.updateTask(widget.currentTask);

    return BlocBuilder<CurrentTaskCubit, CurrentTaskState>(
        bloc: _cubit,
        builder: (context, state) {
          return GestureDetector(
            child: Text(
              state.task,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 36,
                color: Colors.white,
              ),
            ),
            // onTap: () => ScaffoldMessenger.of(context)
            //     .showSnackBar(const SnackBar(content: Text('jahsdkjahs'))),
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) => Dialog(
                  shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text('What will you focus on?'),
                        TextField(
                          controller: _controller,
                          style: const TextStyle(fontSize: 18),
                          onSubmitted: (_) {
                            _cubit.updateTask(_controller.text);
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        });
  }
}
