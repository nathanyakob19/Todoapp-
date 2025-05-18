import 'package:hive_flutter/hive_flutter.dart';

class Database {
  List ToDoList = [];
  late Box _box;

  /// Must be called before using any other method
  Future<void> init() async {
    _box = await Hive.openBox("boxx");
  }

  void createInitialData() {
    ToDoList = [
      ["Make Tutorial", false],
      ["Do Exercise", false],
    ];
  }

  void loadData() {
    ToDoList = _box.get("TODOLIST", defaultValue: []);
  }

  void updateDataBase() {
    _box.put("TODOLIST", ToDoList);
  }

  /// Expose box only if absolutely needed
  Box get box => _box;
}
