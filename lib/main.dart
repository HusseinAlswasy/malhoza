import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:malhoza/Screen/note_view.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:malhoza/cubit/add_note_cubit/add_note_cubit.dart';
import 'package:malhoza/model/note_model.dart';

void main() async{
  await Hive.initFlutter();
   Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>('note box');
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
