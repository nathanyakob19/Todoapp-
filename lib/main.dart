import 'package:flutter/material.dart';
import 'package:todo/home.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
 await Hive.initFlutter();
 var box = await Hive.openBox("boxx");
  runApp(MyApp());
}



class MyApp extends StatelessWidget {


  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'To-Do App',
      home: home(),
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        scaffoldBackgroundColor: Colors.indigo[900], // ✅ here it's fine
      ),
      color: Colors.white,
    );
  }
}
