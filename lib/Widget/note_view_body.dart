import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:malhoza/Widget/note_appBar.dart';
import 'package:malhoza/Widget/note_list_view_item.dart';
import 'package:malhoza/cubit/get_note_cubit/get_note_cubit.dart';

class NoteViewBody extends StatefulWidget {
  const NoteViewBody({super.key});

  @override
  State<NoteViewBody> createState() => _NoteViewBodyState();
}


class _NoteViewBodyState extends State<NoteViewBody> {
  @override
  void initState() {
    BlocProvider.of<GetNoteCubit>(context).GetAllNote();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 50),
        NoteAppbar(text: 'Nota',icon: Icons.search,),
        SizedBox(height: 20),
        Expanded(child: NoteListViewItem()),
      ],
    );
  }
}
