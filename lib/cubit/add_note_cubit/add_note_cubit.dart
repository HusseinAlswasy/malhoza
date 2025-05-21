
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:malhoza/cubit/add_note_cubit/add_note_state.dart';
import 'package:malhoza/model/note_model.dart';

class AddNoteCubit extends Cubit<AddNoteState>{
  AddNoteCubit():super(AddNoteInitial());


  AddNote(NoteModel note)async{
   try{
    emit(AddNoteLoading());
    var notebox = Hive.box<NoteModel>('note box');
   await notebox.add(note);
   emit(AddNoteSuccess());
   }catch(e){
    emit(AddNoteFailuer(e.toString()));
   }
  }

}