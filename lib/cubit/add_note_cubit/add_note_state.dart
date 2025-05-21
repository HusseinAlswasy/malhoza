
abstract class AddNoteState{}

class AddNoteInitial extends AddNoteState{}  // first class

class AddNoteLoading extends AddNoteState{}


class AddNoteSuccess extends AddNoteState{}


class AddNoteFailuer extends AddNoteState{
  final String error;

  AddNoteFailuer(this.error);
}










