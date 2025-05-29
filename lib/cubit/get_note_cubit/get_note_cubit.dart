
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

import 'package:malhoza/cubit/get_note_cubit/get_note_state.dart';
import 'package:malhoza/model/note_model.dart';

class GetNoteCubit extends Cubit<GetNoteState>{
  GetNoteCubit():super(GetNoteInitial());

 List<NoteModel>? notes;
 GetAllNote(){
 var notebox = Hive.box<NoteModel>('note box');
 List<NoteModel> notes=notebox.values.toList();
 emit(GetNoteSuccess(notes));
 }

}