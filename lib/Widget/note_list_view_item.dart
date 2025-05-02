import 'package:flutter/material.dart';
import 'package:malhoza/Widget/note_item.dart';

class NoteListViewItem extends StatelessWidget {
  const NoteListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, item) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: NoteItem(),
        );
      },
    );
  }
}
