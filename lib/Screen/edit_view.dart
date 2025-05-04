
import 'package:flutter/material.dart';
import 'package:malhoza/Widget/CustomeButton.dart';
import 'package:malhoza/Widget/custome_text_feild.dart';
import 'package:malhoza/Widget/note_appBar.dart';

class EditView extends StatelessWidget {
  const EditView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizedBox(height: 50,),
            NoteAppbar(text: 'Edit',icon: Icons.edit,),
            SizedBox(height: 20,),
            CustomeTextFeild(text: 'Edit Note'),
            SizedBox(height: 10,),
            CustomeTextFeild(text: 'Edit Title',lines: 5,),
            SizedBox(height: 300,),
            Customebutton(),
          ],
        ),
      ),
    );
  }
}