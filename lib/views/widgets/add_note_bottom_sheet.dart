import 'package:flutter/material.dart';
import 'package:noteapp/widgets/custom_button.dart';

import '../../widgets/custom_textfield.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, left: 16, right: 16),
      child: Column(
        children: [
          CustomTextField(
            title: 'Title',
          ),
          const SizedBox(
            height: 15,
          ),
          CustomTextField(
            title: 'Content',
            maxLines: 5,
          ),
           const SizedBox(
            height: 25,
          ),
          CustomButton(
            text: 'Add',
            onTap: () {
              print('added a new note');
            },
          )
        ],
      ),
    );
  }
}
