import 'package:malhoza/model/note_model.dart';

abstract class GetNoteState{}

class GetNoteInitial extends GetNoteState{}  // first class

class GetNoteLoading extends GetNoteState{}


class GetNoteSuccess extends GetNoteState{
  final List<NoteModel> notes;

  GetNoteSuccess(this.notes);
}


class GetNoteFailuer extends GetNoteState{
  final String error;

  GetNoteFailuer(this.error);
}


