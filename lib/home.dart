import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo/data/database.dart';
import 'package:todo/util/dialog.dart';
import 'package:todo/util/todo.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  final _controller = TextEditingController();
  final db = Database();

  @override
  void initState() {
    super.initState();
    initializeDatabase();
  }

  void initializeDatabase() async {
    await Hive.initFlutter();
    await db.init(); // await box open

    if (db.box.get("TODOLIST") == null) {
      db.createInitialData();
      db.updateDataBase();
    } else {
      db.loadData();
    }

    setState(() {}); // Refresh the UI
  }

  void checkBoxChanged(bool? value, int index) {
    setState(() {
      db.ToDoList[index][1] = !db.ToDoList[index][1];
    });
    db.updateDataBase();
  }

  void Savenewtask() {
    if (_controller.text.trim().isEmpty) return;

    setState(() {
      db.ToDoList.add([_controller.text.trim(), false]);
      _controller.clear();
    });

    Navigator.of(context).pop();
    db.updateDataBase();
  }

  void createdNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox(
          controller: _controller,
          onSave: Savenewtask,
          onCancel: () {
            Navigator.of(context).pop();
            _controller.clear();
          },
        );
      },
    );
  }

  void deleteTask(int index) {
    setState(() {
      db.ToDoList.removeAt(index);
    });
    db.updateDataBase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[50],
      appBar: AppBar(
        backgroundColor: Colors.orange[400],
        title: Text("TODO",  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,
         ),  ),

        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createdNewTask,
        child: Icon(Icons.add, color: Colors.white,),

        backgroundColor: Colors.orange[400],
      ),
      body: ListView.builder(
        itemCount: db.ToDoList.length,
        itemBuilder: (context, index) {
          return todotile(
            taskcompleted: db.ToDoList[index][1],
            taskname: db.ToDoList[index][0],
            onChanged: (value) => checkBoxChanged(value, index),
            deletefunction: (context) => deleteTask(index),
          );
        },
      ),
    );
  }
}
