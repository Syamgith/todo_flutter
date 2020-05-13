final String tableName = 'todo';
final String columnId = '_id';
final String columnTitle = 'title';
final String columnDone = 'done';

class Task {
  Task({this.name, this.isDone = false, this.id});
  String name;
  bool isDone;
  int id;
  void toggleDone() {
    isDone = !isDone;
  }

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{columnTitle: name, columnDone: isDone ? 1 : 0};
    if (id != null) {
      map[columnId] = id;
    }
    return map;
  }

  void fromMap(Map<String, dynamic> map) {
    id = map[columnId];
    name = map[columnTitle];
    isDone = map[columnDone] == 1;
  }
}
