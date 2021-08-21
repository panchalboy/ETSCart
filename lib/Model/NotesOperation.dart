import 'package:etscart/Model/NotesModel.dart';
import 'package:flutter/material.dart';

class NotesOperation extends ChangeNotifier{
  List<NotesModel>_notes =new List<NotesModel>();
  List<NotesModel> get getNotes{
    return _notes;
  }




  void addNewNotes(String title,String desciption){
    NotesModel notesModel=NotesModel(title, desciption);
    _notes.add(notesModel);
    notifyListeners();
  }
}