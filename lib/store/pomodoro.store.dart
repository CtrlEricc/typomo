import 'dart:async';

import 'package:mobx/mobx.dart';

part 'pomodoro.store.g.dart';

// ignore: library_private_types_in_public_api
class PomodoroStore = _PomodoroStore with _$PomodoroStore;

enum IntervalType { WORK, REST }

abstract class _PomodoroStore with Store {
  @observable
  bool initiated = false;

  @observable
  int minutes = 2;

  @observable
  int seconds = 0;

  @observable
  int timeToWork = 2;

  @observable
  int timeToRest = 2;

  @observable
  IntervalType intervalType = IntervalType.REST;

  Timer? cronometer;

  @action
  void init() {
    initiated = true;
    cronometer = Timer.periodic(const Duration(milliseconds: 100), (timer) {
      if (minutes == 0 && seconds == 0) {
        _switchIntervalType();
      } else if (seconds == 0) {
        seconds = 59;
        minutes--;
      } else {
        seconds--;
      }
    });
  }

  @action
  void stop() {
    initiated = false;
    cronometer?.cancel();
  }

  @action
  void restart() {
    stop();
    minutes = isWorking() ? timeToWork : timeToRest;
    seconds = 0;
  }

  @action
  void incrementTimeToWork() {
    timeToWork++;
    if (isWorking()) {
      restart();
    }
  }

  @action
  void decrementTimeToWork() {
    if (timeToWork > 1) {
      timeToWork--;
      if (isWorking()) {
        restart();
      }
    }
  }

  @action
  void incrementTimeToRest() {
    timeToRest++;
    if (isResting()) {
      restart();
    }
  }

  @action
  void decrementTimeToRest() {
    if (timeToRest > 1) {
      timeToRest--;
      if (isResting()) {
        restart();
      }
    }
  }

  bool isWorking() {
    return intervalType == IntervalType.WORK;
  }

  bool isResting() {
    return intervalType == IntervalType.REST;
  }

  void _switchIntervalType() {
    if (isWorking()) {
      intervalType = IntervalType.REST;
      minutes = timeToRest;
    } else {
      intervalType = IntervalType.WORK;
      minutes = timeToWork;
    }
    seconds = 0;
  }
}
