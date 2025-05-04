import 'package:flutter/material.dart';
import 'package:malhoza/Widget/note_appBar.dart';
import 'package:malhoza/Widget/note_list_view_item.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

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
