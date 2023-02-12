import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:noteapp/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:noteapp/models/note_model.dart';

import 'custom_button.dart';
import 'custom_textfield.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    Key? key,
  }) : super(key: key);

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Container(
        height: 300,
        child: Column(
          children: [
            CustomTextField(
             hint: 'Title',
              onSaved: (value) {
                title = value;
              },
            ),
            const SizedBox(
              height: 15,
            ),
            CustomTextField(
              hint: 'Content',
              maxLines: 5,
              onSaved: (value) {
                content = value;
              },
            ),
            const SizedBox(
              height: 25,
            ),
            BlocBuilder<AddNoteCubit,AddNoteState>(
              builder: (context,state) {
                return CustomButton(
                  isLoading:state is AddNoteLoading?true:false,
                  text: 'Add',
                  onTap: () {
                    addnote(context);
                  },
                );
              }
            )
          ],
        ),
      ),
    );
  }

  void addnote(BuildContext context) {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      
      NoteModel note = NoteModel(
          title: title!,
          subTitle: content!,
          date:DateFormat('dd-MM-yyyy').format(DateTime.now()),
          
          color: Colors.orange.value);
      BlocProvider.of<AddNoteCubit>(context).addNote(note);
    } else {
      autovalidateMode = AutovalidateMode.always;
      setState(() {});
    }
  }
}
