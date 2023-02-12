import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:noteapp/models/note_model.dart';
import 'package:noteapp/views/widgets/custom_appbar.dart';
import 'package:noteapp/views/widgets/custom_textfield.dart';

class EditNoteBody extends StatefulWidget {
  const EditNoteBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteBody> createState() => _EditNoteBodyState();
}

class _EditNoteBodyState extends State<EditNoteBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 35,
          ),
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
            onTap: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = content ?? widget.note.subTitle;
              widget.note.save();
              Navigator.pop(context);
              BlocProvider.of<NotesCubit>(context).fetchNotes();
            },
          ),
          const SizedBox(
            height: 35,
          ),
          CustomTextField(
            hint: widget.note.title,
          
            onChanged: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 15,
          ),
          CustomTextField(
           
            hint: widget.note.subTitle,
            maxLines: 5,
            onChanged: (value) {
              content = value;
            },
          )
        ],
      ),
    );
  }
}
