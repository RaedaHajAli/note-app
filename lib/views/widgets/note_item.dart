import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:noteapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:noteapp/models/note_model.dart';
import 'package:noteapp/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({Key? key, required this.note}) : super(key: key);
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>  EditNoteView(note: note,)));

      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                note.title,
                style:
                    TextStyle(color: Colors.black.withOpacity(0.8), fontSize: 30),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 10),
                child: Text(
                  note.subTitle,
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.35), fontSize: 23),
                ),
              ),
              trailing: GestureDetector(
                onTap: () {
                  note.delete();
                  BlocProvider.of<NotesCubit>(context).fetchNotes();
                  
                },
                child: Icon(FontAwesomeIcons.trash,
                    size: 23, color: Colors.black.withOpacity(0.8)),
              ),
            ),
            Text(
              note.date,
              style:
                  TextStyle(color: Colors.black.withOpacity(0.35), fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
