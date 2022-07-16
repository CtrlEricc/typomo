// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pomodoro.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PomodoroStore on _PomodoroStore, Store {
  late final _$initiatedAtom =
      Atom(name: '_PomodoroStore.initiated', context: context);

  @override
  bool get initiated {
    _$initiatedAtom.reportRead();
    return super.initiated;
  }

  @override
  set initiated(bool value) {
    _$initiatedAtom.reportWrite(value, super.initiated, () {
      super.initiated = value;
    });
  }

  late final _$minutesAtom =
      Atom(name: '_PomodoroStore.minutes', context: context);

  @override
  int get minutes {
    _$minutesAtom.reportRead();
    return super.minutes;
  }

  @override
  set minutes(int value) {
    _$minutesAtom.reportWrite(value, super.minutes, () {
      super.minutes = value;
    });
  }

  late final _$secondsAtom =
      Atom(name: '_PomodoroStore.seconds', context: context);

  @override
  int get seconds {
    _$secondsAtom.reportRead();
    return super.seconds;
  }

  @override
  set seconds(int value) {
    _$secondsAtom.reportWrite(value, super.seconds, () {
      super.seconds = value;
    });
  }

  late final _$timeToWorkAtom =
      Atom(name: '_PomodoroStore.timeToWork', context: context);

  @override
  int get timeToWork {
    _$timeToWorkAtom.reportRead();
    return super.timeToWork;
  }

  @override
  set timeToWork(int value) {
    _$timeToWorkAtom.reportWrite(value, super.timeToWork, () {
      super.timeToWork = value;
    });
  }

  late final _$timeToRestAtom =
      Atom(name: '_PomodoroStore.timeToRest', context: context);

  @override
  int get timeToRest {
    _$timeToRestAtom.reportRead();
    return super.timeToRest;
  }

  @override
  set timeToRest(int value) {
    _$timeToRestAtom.reportWrite(value, super.timeToRest, () {
      super.timeToRest = value;
    });
  }

  late final _$intervalTypeAtom =
      Atom(name: '_PomodoroStore.intervalType', context: context);

  @override
  IntervalType get intervalType {
    _$intervalTypeAtom.reportRead();
    return super.intervalType;
  }

  @override
  set intervalType(IntervalType value) {
    _$intervalTypeAtom.reportWrite(value, super.intervalType, () {
      super.intervalType = value;
    });
  }

  late final _$_PomodoroStoreActionController =
      ActionController(name: '_PomodoroStore', context: context);

  @override
  void init() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.init');
    try {
      return super.init();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void stop() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.stop');
    try {
      return super.stop();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void restart() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.restart');
    try {
      return super.restart();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void incrementTimeToWork() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.incrementTimeToWork');
    try {
      return super.incrementTimeToWork();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrementTimeToWork() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.decrementTimeToWork');
    try {
      return super.decrementTimeToWork();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void incrementTimeToRest() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.incrementTimeToRest');
    try {
      return super.incrementTimeToRest();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrementTimeToRest() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.decrementTimeToRest');
    try {
      return super.decrementTimeToRest();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
initiated: ${initiated},
minutes: ${minutes},
seconds: ${seconds},
timeToWork: ${timeToWork},
timeToRest: ${timeToRest},
intervalType: ${intervalType}
    ''';
  }
}
