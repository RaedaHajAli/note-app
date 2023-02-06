import 'package:flutter/material.dart';
import 'package:noteapp/widgets/edit_note_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:EditNoteBody() ,
    );
  }
}