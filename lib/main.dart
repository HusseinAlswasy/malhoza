import 'package:flutter/material.dart';
import 'package:malhoza/Screen/note_view.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async{
  await Hive.initFlutter();
  await Hive.openBox('note box');
  runApp(const NoteApp());          // Local Database -> Hive
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Pacifico',
      ),
      home: NoteView(),
    );
  }
}
