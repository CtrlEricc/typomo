import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro/components/Cronometer.dart';
import 'package:pomodoro/components/TimeEnter.dart';
import 'package:pomodoro/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        const Expanded(
          child: Cronometer(),
        ),
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Observer(
              builder: (context) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TimeEnter(
                    title: 'Trabalho',
                    value: store.timeToWork,
                    inc: store.initiated && store.isWorking()
                        ? null
                        : store.incrementTimeToWork,
                    dec: store.initiated && store.isWorking()
                        ? null
                        : store.decrementTimeToWork,
                  ),
                  TimeEnter(
                    title: 'Descanso',
                    value: store.timeToRest,
                    inc: store.initiated && store.isResting()
                        ? null
                        : store.incrementTimeToRest,
                    dec: store.initiated && store.isResting()
                        ? null
                        : store.decrementTimeToRest,
                  ),
                ],
              ),
            )),
      ]),
    );
  }
}
