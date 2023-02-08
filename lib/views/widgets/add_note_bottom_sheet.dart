import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:noteapp/cubits/add_note_cubit/add_note_cubit.dart';

import 'add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, left: 16, right: 16),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        builder: (context, state) => ModalProgressHUD(
            inAsyncCall: state is AddNoteLoading ? true : false,
            child: const AddNoteForm()),
        listener: (context, state) {
          if (state is AddNoteFailure) {
            print('Failed ${state.errorMessage} ');
          } else if (state is AddNoteSuccess) {
            Navigator.pop(context);
          }
        },
      ),
    );
  }
}
