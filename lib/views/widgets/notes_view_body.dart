import 'package:flutter/material.dart';
import 'package:noteapp/views/widgets/notes_listview.dart';

import 'custom_appbar.dart';
import 'note_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children:const [
          SizedBox(
            height: 35,
          ),
          CustomAppBar(title: 'Notes',icon: Icons.search,),
          Expanded(
            child: NoteListView()
          ),
        ],
      ),
    );
  }
}
