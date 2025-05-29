import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:malhoza/Widget/add_modal_progress_sheet.dart';
import 'package:malhoza/Widget/note_view_body.dart';
import 'package:malhoza/cubit/get_note_cubit/get_note_cubit.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:(context)=> GetNoteCubit(),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: NoteViewBody(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return AddModalProgressSheet();
              },
            );
          },
          child: Icon(Icons.add, size: 30),
        ),
      ),
    );
  }
}
