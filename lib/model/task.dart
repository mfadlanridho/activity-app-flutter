class Task {
  String get name => _name;
  bool get isDone => _isDone;

  String _name;
  bool _isDone = false;

  late final DateTime timeCreated;

  Task(this._name) {
    timeCreated = DateTime.now();
  }

  void setName(String newName) {
    _name = newName;
  }

  void done() {
    _isDone = true;
  }

  void resetDone() {
    _isDone = false;
  }
}

class DailyTask extends Task {
  DailyTask(String name) : super(name);
}

class TaskWithDeadline extends Task {
  DateTime get deadline => _deadline;
  DateTime _deadline;

  TaskWithDeadline(String name, this._deadline) : super(name);

  void setDeadline(DateTime newDeadline) {
    _deadline = newDeadline;
  }
}
