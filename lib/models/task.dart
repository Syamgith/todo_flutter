class Task {
  Task({this.name, this.isDone});
  final String name;
  bool isDone;
  void toggleDone() {
    isDone = !isDone;
  }
}
