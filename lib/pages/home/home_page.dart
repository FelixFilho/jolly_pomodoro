import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../components/settings/cubit/settings_cubit.dart';
import '../../components/settings/settings.dart';
import '../../components/watch/watch.dart';

class PomodoroApp extends StatefulWidget {
  const PomodoroApp({super.key});

  @override
  State<PomodoroApp> createState() => _PomodoroAppState();
}

class _PomodoroAppState extends State<PomodoroApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: BlocProvider(
        create: (_) => SettingsCubit(),
        child: const PomodoroHomePage(title: 'Jolly Pomodoro'),
      ),
    );
  }
}

class PomodoroHomePage extends StatefulWidget {
  const PomodoroHomePage({super.key, required this.title});

  final String title;

  @override
  State<PomodoroHomePage> createState() => _PomodoroHomePageState();
}

class _PomodoroHomePageState extends State<PomodoroHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          bottomOpacity: 0,
          elevation: 0,
          centerTitle: true,
          backgroundColor: const Color(0xFF0D1821),
          title: Text(
            widget.title,
            style: const TextStyle(color: Colors.white),
          ),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height - 200,
          color: const Color(0xFF344966),
          child: const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Spacer(),
                Text(
                  'Current Task',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 36,
                      color: Colors.white),
                ),
                SizedBox(height: 32),
                Watch(),
                SizedBox(height: 64),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ControlButtons(title: 'Stop'),
                    SizedBox(width: 12),
                    ControlButtons(title: 'Start'),
                  ],
                ),
                // Spacer(),
              ],
            ),
          ),
        ),
        bottomSheet: SettingsView(),
      ),
    );
  }
}

class ControlButtons extends StatelessWidget {
  final String title;

  const ControlButtons({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: const ButtonStyle(
        backgroundColor: MaterialStatePropertyAll<Color>(Color(0xFF344966)),
        // side: MaterialStatePropertyAll(BorderSide.none),
      ),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
      onPressed: () {},
    );
  }
}
